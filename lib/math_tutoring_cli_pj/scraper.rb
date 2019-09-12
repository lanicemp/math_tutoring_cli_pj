# require "pry"
# require 'nokogiri'
# require 'open-uri'
# require 'irb'
# require 'json'
require_relative 'course'

module MathTutoringCliPj 
    class Scraper 

        def self.scrape
            site = "https://www.kutasoftware.com"
            page = Nokogiri::HTML(open(site))
               page.css("div.section-group")[1].css("li")[0...-3]#.each do |li|
                #  link = li.css("a").attr("href").value
                #  name = li.css("a").text
                #MathTutoringCliPj::Course.new(name,link)
                #binding.pry 
        end

        def self.pre_algebra_scrape
            site = "https://www.kutasoftware.com/freeipa.html"
            page = Nokogiri::HTML(open(site))
            page.css("div.topicbox")
            # topics=   page.css(".TopicBox").css("span").text.split(" ")
            # worksheet_links = page.css(".TopicBox").css("a").attr("href").value
            # worksheet_names = page.css(".TopicBox").css("a").text
            #binding.pry 
        end 

        def self.algebra1_scrape
            site = "https://www.kutasoftware.com/free.html"
            page = Nokogiri::HTML(open(site))
            page.css("div.topicbox")
            # topics=   page.css(".TopicBox").css("span").text.split(" ")
            # worksheet_links = page.css(".TopicBox").css("a").attr("href").value
            # worksheet_names = page.css(".TopicBox").css("a").text
            binding.pry 
        end    

            
    end 
end 
#  MathTutoringCliPj::Scraper.second_scrape 
# binding.pry