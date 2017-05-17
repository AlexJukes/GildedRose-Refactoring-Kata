require 'backstage'

describe Backstage do

  let(:backstage) {described_class.new(name: "Copperlica Tickets", quality: 10, sell_in: 15)}
  let(:near_backstage) {described_class.new(name: "Ironlica Tickets", quality: 10, sell_in: 11)}
  let(:very_near_backstage) {described_class.new(name: 'Zinclica Tickets', quality: 10, sell_in: 6)}
  let(:expiring_backstage) {described_class.new(name: 'Rustlica Tickets', quality: 30, sell_in: 1)}

  describe "#update_status" do
    it 'should increase quality by one by default' do
      backstage.update_status
      expect(backstage.quality).to eq(11)
      expect(backstage.sell_in).to eq(14)
    end

    it 'should increase the value by 2 if sell_in is 10 days or less' do
      near_backstage.update_status
      expect(near_backstage.quality).to eq(12)
    end

    it 'should increase the value by 3 if sell_in is 5 days or less' do
      very_near_backstage.update_status
      expect(very_near_backstage.quality).to eq(13)
    end

    it 'should reduce the quality to 0 if sell_in day is reached' do
      expiring_backstage.update_status
      expect(expiring_backstage.quality).to eq(0)
    end
  end
end
