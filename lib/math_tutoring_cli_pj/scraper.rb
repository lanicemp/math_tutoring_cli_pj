
class MathTutoringCliPj::Scraper 



    def self.scrape
        site = "https://www.kutasoftware.com"
        page = Nokogiri::HTML(open(site))
        #doc = page.css(".section-group div")[1]
        doc = page.css(".section-group div")[1].collect#{|icon| icon.attribute("href").value}
        #binding.pry  
    end
      
    def get_site 
        string_data = open("https://www.kutasoftware.com").read
        JSON.parse(string_data)
    end 

end 