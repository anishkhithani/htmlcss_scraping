require 'rubygems'
require 'nokogiri'
require 'open-uri'

#creating a new txt file

File.open ('rates.txt','w') do |f|
    page = Nokogiri::HTML(open("http://www.x-rates.com/table/?from=CAD&amount=1.00"))
    country = page.css()

end
