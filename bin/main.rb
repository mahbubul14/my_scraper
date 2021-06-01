#!/usr/bin/ruby

require 'httparty'
require 'nokogiri'
require_relative '../lib/logics'

# class Cal
#     def add(a,b)
#       a + b
#     end
#   end

    scraper = Scraper.new
    names = scraper.get_names
    prices = scraper.get_prices

    (0...prices.size).each do |index|
        puts "--- index: #{index + 1} ---"
        puts "Name: #{names[index]} | Price: #{prices[index]}"
    end
