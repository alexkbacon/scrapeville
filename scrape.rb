require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
page = Nokogiri::HTML(open('https://news.google.com/news/')).text


page.css('h2.esc-lead-article-title').each do |title|
  puts title.text
end

page.css('.esc-lead-snippet-wrapper').each do |body|
  puts body.text
end

page.css('.al-attribution-timestamp').each do |time|
  puts time.text
end