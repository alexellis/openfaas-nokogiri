require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
class Handler
  def run(body, headers)
    response_headers = {"content-type": "text/plain"}
    page = Nokogiri::HTML(open("http://en.wikipedia.org/"))

    return page.css("title").text, response_headers
  end
end
