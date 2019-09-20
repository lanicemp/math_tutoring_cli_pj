require_relative 'course'

module MathTutoringCliPj 
    class Scraper 

        def self.scrape
            site = "https://www.kutasoftware.com"
            page = Nokogiri::HTML(open(site))
               page.css("div.section-group")[1].css("li")[0...-3].each do |li|
                hash = {    
                link: li.css("a").attr("href").value,
                    name: li.css("a").text
                }
                    MathTutoringCliPj::Course.new(hash)
               end 
        end

        def self.scrape_course_page(course_object)
            if course_object.topics.empty?  
                site = "https://www.kutasoftware.com/#{course_object.course_link}"
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
            end 
        end      
    end 
end 
