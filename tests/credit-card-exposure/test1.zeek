# @TEST-EXEC: zeek -b -r $TRACES/credit-cards.pcap ../../../scripts %INPUT
# @TEST-EXEC: btest-diff credit_card_exposure.log

@load base/protocols/http
redef CreditCardExposure::load_bin_list = F;
redef CreditCardExposure::use_cc_separators = F;
