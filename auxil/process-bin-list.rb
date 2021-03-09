# This script generates the bin-list.zeek script.
# It uses data from: https://github.com/iannuttall/binlist-data

require 'csv'
require 'set'

puts "@load ./bank"
puts "module CreditCardExposure;"
puts
puts "event zeek_init()"
puts "	{"
puts "	if ( CreditCardExposure::load_bin_list )"
puts "		{"

i = 0
bins=Set.new
CSV.foreach("binlist-data.csv") do |row|
	i+=1
	next if i == 1
	next if row[0] !~ /^[0-9]+$/
	bin = row[0]
	next if bins.include?(bin)
	bins << bin

	brand = row[1].to_s.gsub(/\"/, "\\\"")
	type = row[2].to_s.gsub(/\"/, "\\\"")
	name = row[4].to_s.gsub(/\"/, "\\\"")
	country = row[5].to_s.gsub(/\"/, "\\\"")
	puts "		CreditCardExposure::bin_list[#{bin}] = Bank($brand=\"#{brand}\", $typ=\"#{type}\", $name=\"#{name}\", $country=\"#{country}\");"
end

puts "		}"
puts "	}"
