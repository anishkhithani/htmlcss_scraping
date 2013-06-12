require 'rubygems'
require 'nokogiri'
require 'open-url'

#creating a new txt file

File.open ('rates.txt','w') do |r|
    page = Nokogiri::HTML(open(http://www.x-rates.com/table/?from=CAD&amount=1.00))
