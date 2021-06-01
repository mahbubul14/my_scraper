require_relative '../bin/main'

describe Scraper do
    describe "#names" do
        it "returns products name" do
            text = Scraper.new
        expect(text.p_names).not_to be_nil
        end
    end
    describe "#prices" do
      let(:costs) {Scraper.new}
      it "returns products prices" do
        expect(costs.p_prices).not_to be_nil
      end
    end
end
