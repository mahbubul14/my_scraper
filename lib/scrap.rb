require 'httparty'
require 'nokogiri'
require 'pry'

class Scraper
    attr_accessor :parse_page
    def initialize
        doc = HTTParty.get("http://www.nike.com/w/mens-nike-by-you-lifestyle-shoes-13jrmz6ealhznik1zy7ok")
        @parse_page ||= Nokogiri::HTML(doc.body)
    end
    def get_names
        names = parse_page.css(".product-card__title").children.map { |name| name.text }.compact
    end
    def get_prices
        prices = parse_page.css(".product-card__price").children.map { |price| price.text }.compact
    end

    # private

    # def item_container
    #     parse_page.css(".grid-item-info")
    # end

    scraper = Scraper.new
    names = scraper.get_names
    prices = scraper.get_prices

    (0...prices.size).each do |index|
        puts "--- index: #{index + 1} ---"
        puts "Name: #{names[index]} | Price: #{prices[index]}"
    end
end
