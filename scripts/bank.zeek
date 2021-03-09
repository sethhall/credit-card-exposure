module CreditCardExposure;

export {
	## If you would like to stop loading the bank list, set this option
	## to F. This option can cause Zeek to take significant time to
	## start up while the list is being parsed.
	const load_bin_list = T &redef;

	type Bank: record {
		## Brand of credit card (mastercard/visa/etc)
		brand:  string;
		## Type of card (credit/debit)
		typ:    string;
		## Name of the issuing bank.
		name: string;
		## Two letter country code for the issuing bank.
		country: string;
	} &log;

	## List of bank BINs/IINs
	global bin_list: table[count] of Bank = {};
}
