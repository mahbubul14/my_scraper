require_relative '../lib/scrap'
# require_relative '../lib/test'
describe Cal do
    describe "#add" do
        it "returns the sum of two numbers" do
            cal = Cal.new
        expect(cal.add(5,2)).to eq(7)
        end
    end
end
describe Scraper do
    describe "#get_names" do
        it "returns the product name" do
            title = Scraper.new
        expect(title.get_names.all? {|i|i.length >1}).to be(true)
        end
    end
end
