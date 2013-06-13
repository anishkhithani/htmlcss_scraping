require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'csv'

headlines = CSV.read("headlines.csv", {:headers=>true, :return_headers => true, :header_converters => :symbol, :converters => :all})

File.open('div_links_for_headlines.html', 'w') do |html|

    # headlines.each do
    #     |headline, link|
    #     html.write("<div class ='headline_link'> \n")
    #     html.write("<a" + :headline + "href=" + :link + "</a>\n")
    #     html.write("/div>\n")
    # end

    # headlines.each do
    #         |headline,link|
    #         html.write("<div class ='headline_link'> \n")
    #         html.write("<a '#{headline}' href= '#{link}' </a>\n")
    #         html.write("/div>\n")
    # end

    for i in 1..29 do
            html.write("<div class ='headline_link'> \n")
            html.write("<a" +" "+ "'"+headlines[:headline][i]+"'" +" "+ "href=" + "'"+headlines[:link][i]+"'>" + "</a>\n")
            html.write("</div>\n")
        end
end
