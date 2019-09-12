
module MathTutoringCliPj

    class Course 
    
        #  MathTutoringCliPj::Scraper.scrape
        
        attr_accessor :course_name, :course_link, :topics
        @@all = []

         def initialize(attributes)
            @course_name = attributes[:name]  
            @course_link = attributes[:link]
            @topics =[] 
            @@all << self 
        end 

        def self.all 
            @@all 
            #||= self.pre_algebra
           # binding.pry
        end 

        # def self.pre_algebra
        #     MathTutoringCliPj::Scraper.scrape.collect do |link|
        #         collection = MathTutoringCliPj::Course.new 
        #         collection.link = link.css("a").attr("href").value
        #          collection.name = link.css("a").text
        #          collection
        #     end 
        # end 
                #binding.pry 
            #puts "go to pre-algebra site"
            #MathTutoringCliPj::Scraper.scrape
            #if name == 
            
            # MathTutoringCliPj::Scraper.scrape.each do |courses|
            #     courses.each do |course| 
                
                #end     
            #end 
            #course worksheet menu 
            def self.topics
                MathTutoringCliPj::Scraper.scrape_course_page
                # .collect do |link|
                #     collection = MathTutoringCliPj::Course.new 
                #     collection.topic = page.css(".TopicBox").css("span").text.split(" ")
                #      #collection.name = link.css("a").text
                #      collection
                # end 
            end 
            def self.pre_algebra_topic
                puts "going to scrape the topics"
                MathTutoringCliPj::Scraper.pre_algebra_topics_scrape   
            end 
            
        # def self.all 
        #     @@all
        # end 
#
        def algebra_1
        MathTutoringCliPj::Scraper.algebra1_scrape.collect do |link|
            collection = MathTutoringCliPj::Course.new 
            collection.topic = page.css(".TopicBox").css("span").text.split(" ")
             #collection.name = link.css("a").text
             collection
            end 
        end 
        #     course_worksheet_menu
        # end 
        
        # def algebra_2

        #     course_worksheet_menu
        # end 
        
        # def geometry 

        #     course_worksheet_menu
        # end 

        # def course_worksheet_menu 

        #     select_worksheet
        # end 
        
        # def select_worksheet
        # end 
    end 
end 