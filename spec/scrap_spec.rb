# require_relative '../bin/main'
require_relative '../lib/logics'
describe Cal do
  describe '#add' do
    it 'returns the sum of two numbers' do
      cal = Cal.new
      expect(cal.add(5, 2)).to eq(7)
    end
  end
end
# describe Scraper do
#     describe "#get_names" do
#         it "returns the product name" do
#             text = Scraper.new
#         expect(text.get_names).to_be true (str)
#         end
#     end
# end
