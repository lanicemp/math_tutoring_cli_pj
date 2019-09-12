module MathTutoringCliPj
    class CLI

            #The call method will print the welcome message then direct the user through the list of courses in the course
            #method and bring them to the menu.

        def call 
            puts "Welcome to LP Tutoring here's a list of our courses!".colorize(:green)
            MathTutoringCliPj::Scraper.scrape
            # MathTutoringCliPj::Course.pre_algebra_topic
            courses 
            menu  
        end 
        
        def courses 
        #here
        # puts <<- DOC
        #     #Docs..gsub/^\s*/,"
        
            # course_list = %w(
            #     Pre-Algebra
            #     Algebra1 
            #     Algebra2  
            #     Geometry)
            MathTutoringCliPj::Course.all.each.with_index(1) do |object, index|
                #shortcut to have my index start with one
                #DOC 
                puts "#{index}. #{object.name}" 
            end 
        end 

        def menu
            input = ""
            #while input != "exit"
            puts "Enter the number of the course you would like to take or type exit:".colorize(:light_blue)
            while input != "exit"
                input = gets.chomp
                #while input != "exit"
    
                    #ty out between method
                if (1..4).include?(input.to_i)
                    object = MathTutoringCliPj::Course.all[input.to_i - 1]
                    puts "Welcome to #{object.name}! We have many topics for you to choose from! ".colorize(:green)
                    MathTutoringCliPj::Scraper.scrape_course_page(object)
                elsif input.downcase == "exit"
                    puts "Thank you for stopping by, try another one of our courses!".colorize(:green)
                      break 
                else
                    puts "Error invalid option try again".colorize(:red)
                     menu
                end 
            end 
                puts "Goodbye!! :)".colorize(:light_green)  
        end 
                # case input
                # when "1"
                #     puts "Welcome to Pre_Algebra! We have many topics for you to choose from! "
                #     pre_algebra_topics
                #     pre_algebra_menu
                #     # call_course
                # when "2"
                #     puts "Welcome to Algebra-1! We have many topics for you to choose from!"
                #     algebra1_topics
                #     algebra1_menu
                # when "3"
                #     puts "Welcome to Algebra-2! We have many topics for you to choose from!"
                #     algebra2_topics
                #     algebra2_menu
                # when "4"
                #     puts "Welcome to Geometry! We have many topics for you to choose from!"
                #     geometry_topics
                #     geometry_menu
                # when
                # else 
                #     
                # end 
        #     end 
        #     puts "Goodbye!! :)"   
        # end 
    end 
end 
#         def pre_algebra_topics 
#            # MathTutoringCliPj::Course.all.each.with_index(1) {|course, index| puts "#{index}, #{course.name}"}
#            binding.pry
#             MathTutoringCliPj::Course.pre_algebra.each.with_index(1) {|course, index| puts "#{index}, #{course.name}"}
#             binding.pry 
#             binding.pry 
#             #here
#             # puts <<- DOC
#             #     #Docs..gsub/^\s*/,"
#             #topic_list = MathTutoringCliPj::Scraper.pre_algebra_scrape
#             #  topic_list = %w(
#             #      Basics
#             #      )
#             #topic_list.each.with_index(1) do |string, index|
#             #shortcut to have my index start with one
#             #figure out how to use the list from nokigiri.  
#             #DOC 
#             #puts "#{index}. #{string}" 
#             #end 
#         end 

#         def pre_algebra_menu
#             input = ""
#             #while input != "exit"
#             #puts "Welcome to pre_algebra! We have many topics for you to choose from!"
#             puts "Please enter the number of the topic you would like to view." 
#             while input != "exit"
#             input = gets.chomp
#             #while input != "exit"
#                 case input
#                 when "1"
#                     puts "Welcome to Basics please choose a worksheet"
#                     puts "get list of pre-algebra worksheets with links from Nokogiri"
#                     MathTutoringCliPj::Course.pre_algebra
#                     # call_course
#                 when "2"
#                     puts "Pulls Algebra 1  course"
#                 when "3"
#                     puts "Pulls Algebra 2 course"
#                 when "4"
#                     puts "Pulls Geomerty course"
#                 when "exit"
#                     puts "Thank you for stopping by try another one of our courses!"
#                     call 
#                 else 
#                     puts "Error invalid option try again"
#                     pre_algebra_menu
#                 end 
#             end 
#             puts "next"   
#         end 

#         def list_by_topic 
#             MathTutoringCliPj::Course.pre_algebra
#         end 
         
#         def algebra1_topics 
#             #here
#             # puts <<- DOC
#             #     #Docs..gsub/^\s*/,"
#             topic_list = %w(
#                 Basics)
#             topic_list.each.with_index(1) do |string, index|
#             #shortcut to have my index start with one
#             #figure out how to use the list from nokigiri.  
#             #DOC 
#             puts "#{index}. #{string}" 
#             end 
#         end 

#         def algebra1_menu
#             input = ""
#             #while input != "exit"
#             #puts "Welcome to pre_algebra! We have many topics for you to choose from!"
#             puts "Please enter the number of the topic you would like to view." 
#             while input != "exit"
#             input = gets.chomp
#             #while input != "exit"
#                 case input
#                 when "1"
#                     puts "Welcome to Basics please choose a worksheet"
#                     puts "get list of Algebra 1 worksheets with links from Nokogiri"
#                     MathTutoringCliPj::Course.algebra_1
#                     # call_course
#                 when "2"
#                     puts "Pulls Algebra 1  course"
#                 when "3"
#                     puts "Pulls Algebra 2 course"
#                 when "4"
#                     puts "Pulls Geomerty course"
#                 when "exit"
#                     puts "Thank you for stopping by try another one of our courses!"
#                     call 
#                 else 
#                     puts "Error invalid option try again"
#                     algebra1_menu
#                 end 
#             end 
#             puts "next"   
#         end 

#         def algebra2_topics 
#             #here
#             # puts <<- DOC
#             #     #Docs..gsub/^\s*/,"
#             topic_list = %w(
#                 Basics)
#             topic_list.each.with_index(1) do |string, index|
#             #shortcut to have my index start with one
#             #figure out how to use the list from nokigiri.  
#             #DOC 
#             puts "#{index}. #{string}" 
#             end 
#         end 

#         def algebra2_menu
#             input = ""
#             #while input != "exit"
#             puts "Please enter the number of the topic you would like to view." 
#             while input != "exit"
#             input = gets.chomp
#             #while input != "exit"
#                 case input
#                 when "1"
#                     puts "Welcome to Basics please choose a worksheet"
#                     puts "get list of Algebra 2 worksheets with links from Nokogiri"
#                     MathTutoringCliPj::Course.algebra_2
#                     # call_course
#                 when "2"
#                     puts "Pulls Algebra 1  course"
#                 when "3"
#                     puts "Pulls Algebra 2 course"
#                 when "4"
#                     puts "Pulls Geomerty course"
#                 when "exit"
#                     puts "Thank you for stopping by try another one of our courses!"
#                     call 
#                 else 
#                     puts "Error invalid option try again"
#                     algebra1_menu
#                 end 
#             end 
#             puts "next"   
#         end 
#         def geomerty_topics 
#             #here
#             # puts <<- DOC
#             #     #Docs..gsub/^\s*/,"
#             topic_list = %w(
#                 Basics)
#             topic_list.each.with_index(1) do |string, index|
#             #shortcut to have my index start with one
#             #figure out how to use the list from nokigiri.  
#             #DOC 
#             puts "#{index}. #{string}" 
#             end 
#         end 

#         def geometry_menu
#             input = ""
#             #while input != "exit"
#             puts "Please enter the number of the topic you would like to view." 
#             while input != "exit"
#             input = gets.chomp
#             #while input != "exit"
#                 case input
#                 when "1"
#                     puts "Welcome to Basics please choose a worksheet"
#                     puts "get list of Geometry worksheets with links from Nokogiri"
#                     MathTutoringCliPj::Course.geometry
#                     # call_course
#                 when "2"
#                     puts "Pulls Algebra 1  course"
#                 when "3"
#                     puts "Pulls Algebra 2 course"
#                 when "4"
#                     puts "Pulls Geomerty course"
#                 when "exit"
#                     puts "Thank you for stopping by try another one of our courses!"
#                     call 
#                 else 
#                     puts "Error invalid option try again"
#                     algebra1_menu
#                 end 
#             end 
#             puts "next"   
#         end 
#     end 
# end 
#CLI.new.call