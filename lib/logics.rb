class Scraper
    attr_accessor :parse_page
    def initialize
        doc = HTTParty.get("http://www.nike.com/w/mens-nike-by-you-lifestyle-shoes-13jrmz6ealhznik1zy7ok")
        @parse_page ||= Nokogiri::HTML(doc.body)
    end
    def get_names
        names = name.map { |name| name.text }
    end
    def get_prices
        prices = price.map { |price| price.text }
    end
    
    private
    def name
        parse_page.css(".product-card__title")
    end
    def price
        parse_page.css(".product-card__price")
    end
end