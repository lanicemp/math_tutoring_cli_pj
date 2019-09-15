
module MathTutoringCliPj

    class Course 
        
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
        end 

            def self.topics
                MathTutoringCliPj::Scraper.scrape_course_page
            end 
    end 
end 