module CreditCardExposure;

export {
	type Bank: record {
		typ:      string;
		name:     string;
	} &log;

	const bin_list: table[count] of Bank = {
	} &redef;
}
