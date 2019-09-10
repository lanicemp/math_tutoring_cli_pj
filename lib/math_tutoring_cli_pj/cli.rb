class CLI 

    def initialize 
        @call = call
    end 



    def call 
        puts "Welcome to LP Tutoring here's a list of our courses!"
        courses 
        menu  
        print schedule
    end 
    
    # def greeting
       
    # end 

     def courses 
       #here
       # puts <<- DOC
    #     #Docs..gsub/^\s*/,"
    course_list = %w(
         Pre-Algebra
	     Algebra1 
	     Algebra2  
	     Geometry)
     course_list.each.with_index(1) do |string, index|
     #shortcut to have my index start with one
       #DOC 
       puts "#{index}. #{string}" 
     end 
     end 


    def menu
        input = ""
        #while input != "exit"
        puts "Enter the number of the course you would like to take or type exit:" 
        while input != "exit"
        input = gets.chomp
        #while input != "exit"
            case input
            when "1"
                #puts "Pulls Pre-Algebra course "
                pre_algebra
            when "2"
                puts "Pulls Algebra 1  course"
            when "3"
                puts "Pulls Algebra 2 course"
            when "4"
                puts "Pulls Geomerty course"
            else 
                puts "Error invalid option try again"
                menu
            end 
        end 
        puts "next"
         
    end 
    
    def pre_algebra
    #puts "go to pre-algebra site"
    MathTutoringCliPj::Scraper.scrape.each do |course|
    binding.pry 
    end 
    end 
end 
CLI.new.call