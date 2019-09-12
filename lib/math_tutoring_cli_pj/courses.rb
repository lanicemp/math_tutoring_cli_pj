class MathTutoringCliPj::Courses 

    def pre_algebra
        #puts "go to pre-algebra site"
        MathTutoringCliPj::Scraper.scrape.each do |courses|
            courses.each do |course, y, z| 
            binding.pry 
            end     
        end 
        #course worksheet menu 
    end 

    def algebra_1

        course_worksheet_menu
    end 
    
    def algebra_2

        course_worksheet_menu
    end 
    
    def geometry 

        course_worksheet_menu
    end 

    def course_worksheet_menu 

        select_worksheet
    end 
    
    def select_worksheet
    end 
end 