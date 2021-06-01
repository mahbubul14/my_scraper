#!/usr/bin/ruby

require 'httparty'
require 'nokogiri'
require_relative '../lib/logics'

scraper = Scraper.new
names = scraper.p_names
prices = scraper.p_prices

(0...prices.size).each do |index|
  puts "--- index: #{index + 1} ---"
  puts "Name: #{names[index]} | Price: #{prices[index]}"
end
