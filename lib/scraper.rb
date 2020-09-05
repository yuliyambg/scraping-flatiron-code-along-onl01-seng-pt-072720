require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper
  
  def get_page
    Nokogiri::HTML(open("https://flatironschool.com"))
  end

def get_courses
  get_page.css(".title-oE5vT4")
end

def make_courses
  get_courses.each do |course|
    c = Course.new
    c.title = course.text
    c.description = "description"
    c.schedule = "schedule"
  end
end

end

# class Scraper
  
  
#   def get_page
#     Nokogiri::HTML(open("https://flatironschool.com"))
#   end

#   def get_courses
#     get_page.css(".title-oE5vT4")
#   end
  
#   def print_courses
#     self.make_courses
#     Course.all.each do |course|
#       if course.title && course.title != ""
#         puts "Title: #{course.title}"
#         puts "  Schedule: #{course.schedule}"
#         puts "  Description: #{course.description}"
#       end
#     end
#   end
  
#   def make_courses
#     get_courses.each do |course|
#       c = Course.new
#       c.title = course.text
#       c.description = "description"
#       c.schedule = "schedule"
#     end
#   end
  
# end



