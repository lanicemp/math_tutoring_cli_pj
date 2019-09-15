module MathTutoringCliPj
    class CLI

        def call 
            puts "  Welcome to LP Tutoring here's a list of our courses!".colorize(:green)
            MathTutoringCliPj::Scraper.scrape
            courses 
            menu  
        end 
        
        def courses 
            MathTutoringCliPj::Course.all.each.with_index(1) do |object, index|
                puts "#{index}. #{object.course_name}" 
            end 
        end 

        def menu
            input = ""
            puts "  Enter the number of the course you would like to take.".colorize(:light_blue)
            puts ""
            puts "  You may type exit at any time to exit the program.".colorize(:red)
            while input != "exit"
                input = gets.chomp
                
                if (1..4).include?(input.to_i)
                    @selected_course = MathTutoringCliPj::Course.all[input.to_i - 1]
                    puts "  Welcome to #{@selected_course.course_name}! We have many topics for you to choose from! ".colorize(:green)
                    MathTutoringCliPj::Scraper.scrape_course_page(@selected_course)
                    topic_list
                elsif input.downcase == "exit"
                    puts "  Thank you for stopping by, try another one of our courses!".colorize(:green)
                      break 
                else
                    puts "  Error invalid option try again".colorize(:red)
                     menu
                end 
            end 
                puts "  Goodbye!! :)".colorize(:light_green)  
        end 

        def topic_list 
            @selected_course.topics.each.with_index(1) do |hash, index|

                puts "#{index}. #{hash[:topic]}" 
            end 
            topic_menu
        end 

        def topic_menu
            input = ""
            puts "  Enter the number of the topic you would like to practice to view worksheets.".colorize(:light_blue)
            puts ""
            puts "  You may type exit at any time to exit the program.".colorize(:red)
            
            while input != "exit"
                input = gets.chomp
                
                if (1..15).include?(input.to_i)
                    @selected_topic = @selected_course.topics[input.to_i - 1]
                    puts "  Welcome to #{@selected_topic[:topic]}! We have many worksheets for you to choose from! ".colorize(:green)
                    MathTutoringCliPj::Scraper.scrape_course_page(@selected_course)
            
                    worksheet_list 
                    worksheet_message
                    
                elsif input.downcase == "exit"
                    puts "  Thank you for stopping by, try another one of our courses!".colorize(:green)
                      break 
                else
                    puts "  Error invalid option try again".colorize(:red)
                     menu
                end 
            end 
                puts "  Goodbye!! :)".colorize(:light_green)  
        end 
     

        def worksheet_list 
                @selected_topic[:links].collect.with_index(1)  do |worksheet_hash, index|
                puts " #{index}. worksheet name --> #{worksheet_hash[:worksheet_name]}"
                puts "    worksheet link --> #{worksheet_hash[:worksheet_link]}"
                puts " "  
            end 
        end 

        def worksheet_message
            
                puts "  Above ^^ is a list of our worksheets and their links for your topic.".colorize(:light_blue )
                puts "  Please copy an paste the link in your browser bar to pull up the associated worksheet".colorize(:light_blue)
                puts ""
                puts "  With practice comes perfection. :)".colorize(:green)
                puts ""
                puts "  You may type exit at any time to exit the program".colorize(:red)
                input = ""
            while input != "exit"
                input = gets.chomp
                if input.downcase == "exit"
                puts "  Thank you for stopping by, try another one of our courses!".colorize(:green)
                      break 
                end 
            end 
            puts "  Goodbye!! :)".colorize(:green)
        end 
    end 
end 
