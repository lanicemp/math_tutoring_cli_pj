require 'nokogiri'
require 'open-uri'
require 'pry'
require 'irb'
require 'json'
require 'colorize'

require_relative "./math_tutoring_cli_pj/version"
require_relative './math_tutoring_cli_pj/scraper'
require_relative './math_tutoring_cli_pj/course'
require_relative './math_tutoring_cli_pj/cli'
require_relative './math_tutoring_cli_pj/client'

 #module MathTutoring
  # class Error < StandardError; end
  # Your code goes here...
 #end

#Notes 
# 1. the require files have to go on top of the require relative files so that they can be used in the different files. 