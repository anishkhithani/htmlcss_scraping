require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'csv'

#creating a new txt file

page = Nokogiri::HTML(open("http://www.thedailybeast.com/cheat-sheets/2013/06/12/cheat-sheet.html"))
row_data = ["headline","link"]


CSV.open('headlines.csv','w') do |h|
    h << row_data
    # headlines = page.css('.heading.heading-style-x').text.strip
    links = page.css('.heading.heading-style-x>a')




    links.each do |x|

        headline = x.text.gsub("\n","").strip
        link = x.attr("href")

        h << [headline, "http://www.thedailybeast.com"+link]
    end
end

