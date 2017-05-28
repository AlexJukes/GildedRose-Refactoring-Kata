require 'backstage'

describe Backstage do

  let(:backstage) {described_class.new(name: "Copperlica Tickets", quality: 10, sell_in: 15)}
  let(:near_backstage) {described_class.new(name: "Ironlica Tickets", quality: 10, sell_in: 10)}
  let(:very_near_backstage) {described_class.new(name: 'Zinclica Tickets', quality: 10, sell_in: 5)}
  let(:expiring_backstage) {described_class.new(name: 'Rustlica Tickets', quality: 30, sell_in: 0)}

  describe "#update_status" do
    it 'should increase quality by one by default' do
      backstage.update_status
      expect(backstage.quality).to eq(11)
      expect(backstage.sell_in).to eq(14)
    end

    it 'should increase the value by 2 if sell_in is less than 10 days' do
      near_backstage.update_status
      expect(near_backstage.quality).to eq(12)
    end

    it 'should increase the value by 3 if sell_in is less than 5 days' do
      very_near_backstage.update_status
      expect(very_near_backstage.quality).to eq(13)
    end

    it 'should reduce the quality to 0 past sell_in day' do
      expiring_backstage.update_status
      expect(expiring_backstage.quality).to eq(0)
    end
  end
end
