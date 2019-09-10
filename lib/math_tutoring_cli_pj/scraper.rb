
class MathTutoringCliPj::Scraper 



    def self.scrape

        site = "https://www.kutasoftware.com"
        page = Nokogiri::HTML(open(site))
        doc = page.css('div.section')
        binding.pry 
    end  
end 