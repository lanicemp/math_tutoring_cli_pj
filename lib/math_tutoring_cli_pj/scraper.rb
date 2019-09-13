# require "pry"
# require 'nokogiri'
# require 'open-uri'
# require 'irb'
# require 'json'
require_relative 'course'

module MathTutoringCliPj 
    class Scraper 
        attr_accessor 

        def self.scrape
            site = "https://www.kutasoftware.com"
            page = Nokogiri::HTML(open(site))
               page.css("div.section-group")[1].css("li")[0...-3].each do |li|
                hash = {    
                link: li.css("a").attr("href").value,
                    name: li.css("a").text
                }
                    MathTutoringCliPj::Course.new(hash)
                    #binding.pry 
               end 
        end

        def self.scrape_course_page(course_object)
            site = "https://www.kutasoftware.com/#{course_object.course_link}"
            #the course_object.course_link is an object of the course class and
            # I can use this format when need to call on an attribute of an object.
            
            page = Nokogiri::HTML(open(site))
            page.css("div.TopicBox").each do |box|
                hash = {
                    topic: box.css("span").text,
                    links: []
                }
                box.css("a").each do |a_tag|  
                    worksheet_hash ={
                    worksheet_link: a_tag.attr("href"),
                    worksheet_name: a_tag.text
                    }
                    hash[:links] << worksheet_hash
                end 
                course_object.topics << hash 
               
            end 
            #binding.pry
        end 

        # def self.scrape_topics(course_object)
        #     site = "https://www.kutasoftware.com/#{course_object.link}"
        #     page = Nokogiri::HTML(open(site))
        #     page.css("div.topicbox").each do |li|
        #         #binding.pry
        #         topics=   li.css(".TopicBox")[1..3].css("span").each do |box|
        #             binding.pry
        #         end 
        #     end 
        # end    
        # def self.pre_algebra_topics_scrape
        #     topics = {}
        #     MathTutoringCliPj::Course.all.each do |topic|
        #         binding.pry
        #         page = Nokogiri::HTML(open(topic.name)) 
        #         topics= page.css(".TopicBox").css("span").text.split(" ")
        #         #binding.pry
        #     end
        # end 


        # def self.algebra1_scrape
        #     site = "https://www.kutasoftware.com/free.html"
        #     page = Nokogiri::HTML(open(site))
        #     page.css("div.topicbox")
        #      topics=   page.css(".TopicBox").css("span").text.split(" ")
        #     # worksheet_links = page.css(".TopicBox").css("a").attr("href").value
        #     # worksheet_names = page.css(".TopicBox").css("a").text
        #     binding.pry 
        # end 
        
        
        # def self.algebra2_scrape
        #     site = "https://www.kutasoftware.com/freeia2.html"
        #     page = Nokogiri::HTML(open(site))
        #     page.css("div.topicbox")
        #      topics=   page.css(".TopicBox").css("span").text.split(" ")
        #     # worksheet_links = page.css(".TopicBox").css("a").attr("href").value
        #     # worksheet_names = page.css(".TopicBox").css("a").text
        #     binding.pry 
        # end   
        # def self.geometry_scrape
        #     site = "https://www.kutasoftware.com/freeige.html"
        #     page = Nokogiri::HTML(open(site))
        #     page.css("div.topicbox")
        #      topics=   page.css(".TopicBox").css("span").text.split(" ")
        #     # worksheet_links = page.css(".TopicBox").css("a").attr("href").value
        #     # worksheet_names = page.css(".TopicBox").css("a").text
        #     binding.pry 
        # end      
    end 
end 
#  MathTutoringCliPj::Scraper.second_scrape 
# binding.pry