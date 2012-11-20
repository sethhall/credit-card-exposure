
@load ./bin-list

module CreditCardExposure;

export {
	redef enum Log::ID += { LOG };

	redef enum Notice::Type += { 
		Found
	};

	type Info: record {
		## When the SSN was seen.
		ts:   time    &log;
		## Unique ID for the connection.
		uid:  string  &log;
		## Connection details.
		id:   conn_id &log;
		## Credit card number that was discovered.
		cc:   string  &log &optional;
		## Bank Indentification number information
		bank: Bank    &log &optional;
		## Data that was received when the credit card was discovered.
		data: string  &log;
	};
	
	## Logs are redacted by default.  If you want to see the credit card 
	## numbers in the log, redef this value to F.  
	## Notices are automatically and unchangeably redacted.
	const redact_log = T &redef;

	## The character used for redaction to replace all numbers.
	const redaction_char = "X" &redef;

	## The number of bytes around the discovered credit card number that is used 
	## as a summary in notices.
	const summary_length = 200 &redef;

	const cc_regex = /(^|[^0-9\-])\x00?[3-9](\x00?[0-9]){3}([[:blank:]\-\.]?\x00?[0-9]{4}){3}([^0-9\-]|$)/ &redef;

	const cc_separators = /\.([0-9]*\.){2}/ | 
	                      /\-([0-9]*\-){2}/ | 
	                      /[:blank:]([0-9]*[:blank:]){2}/ &redef;
}

const luhn_vector = vector(0,2,4,6,8,1,3,5,7,9);
function luhn_check(val: string): bool
	{
	local sum = 0;
	local odd = T;
	for ( char in gsub(val, /[^0-9]/, "") )
		{
		odd = !odd;
		local digit = to_count(char);
		sum += (odd ? digit : luhn_vector[digit]);
		}
	return sum % 10 == 0;
	}

event bro_init() &priority=5
	{
	Log::create_stream(CreditCardExposure::LOG, [$columns=Info]);
	}


function check_cards(c: connection, data: string): bool
	{
	local ccps = find_all(data, cc_regex);

	for ( ccp in ccps )
		{
		# Remove non digit characters from the beginning and end of string.
		ccp = sub(ccp, /^[^0-9]*/, "");
		ccp = sub(ccp, /[^0-9]*$/, "");
		# Remove any null bytes.
		ccp = gsub(ccp, /\x00/, "");
		if ( cc_separators in ccp && luhn_check(ccp) )
			{
			local redacted_cc = gsub(ccp, /[0-9]/, redaction_char);

			# we've got a match
			local parts = split_all(data, cc_regex);
			for ( i in parts )
				{
				if ( i % 2 == 0 )
					{
					# Redact all matches
					local cc_match = parts[i];
					parts[i] = gsub(parts[i], /[0-9]/, redaction_char);
					}
				}

			local redacted_data = join_string_array("", parts);
			local cc_location = strstr(data, ccp);

			# Trim the data
			local begin = 0;
			if ( cc_location > (summary_length/2) )
				begin = cc_location - (summary_length/2);
			
			local byte_count = summary_length;
			if ( begin + summary_length > |redacted_data| )
				byte_count = |redacted_data| - begin;

			local trimmed_redacted_data = sub_bytes(redacted_data, begin, byte_count);

			NOTICE([$note=Found,
			        $conn=c,
			        $msg=fmt("Redacted excerpt of disclosed credit card session: %s", trimmed_redacted_data),
			        $identity=cat(c$id$orig_h,c$id$resp_h)]);

			local log: Info = [$ts=network_time(), 
			                   $uid=c$uid, $id=c$id,
			                   $cc=(redact_log ? redacted_cc : ccp),
			                   $data=(redact_log ? trimmed_redacted_data : sub_bytes(data, begin, byte_count))];

			local bin_number = to_count(sub_bytes(gsub(ccp, /[^0-9]/, ""), 1, 6));
			if ( bin_number in bin_list )
				log$bank = bin_list[bin_number];

			Log::write(CreditCardExposure::LOG, log);
			return T;
			}
		}
	return F;
	}

event http_entity_data(c: connection, is_orig: bool, length: count, data: string)
	{
	if ( c$start_time > network_time()-20secs )
		check_cards(c, data);
	}

event mime_segment_data(c: connection, length: count, data: string)
	{
	if ( c$start_time > network_time()-20secs )
		check_cards(c, data);
	}

# This is used if the signature based technique is in use
function validate_credit_card_match(state: signature_state, data: string): bool
	{
	# TODO: Don't handle HTTP data this way.
	if ( /^GET/ in data )
		return F;

	return check_cards(state$conn, data);
	}
