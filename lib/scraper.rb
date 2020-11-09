require 'open-uri'
require 'pry'
require 'nokogiri'
require 'json'

class Scraper
  attr_accessor :index, :profile

  def self.scrape_index_page(index_url)
    # index_url = 'https://learn-co-curriculum.github.io/student-scraper-test-page/index.html'
    index = Nokogiri::HTML(open(index_url))
    fullClass = []
    binding.pry
    index.css(".student-card").each do |person|
      scraped_students = {
        :name => person.css("a .card-text-container .student-name").text,
        :location => person.css("a .card-text-container .student-location").text
        # :profile_url => person.css(".student-card a").href
      }
      # newStudent = Student.new(student)
      fullClass << newStudent
      
    end
    fullClass
    
  end

  def self.scrape_profile_page(profile_url)
    @profile = Nokogiri::HTML(index_url)
  end

end

