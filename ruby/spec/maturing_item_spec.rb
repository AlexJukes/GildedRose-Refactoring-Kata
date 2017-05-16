require 'maturing_item'

describe MaturingItem do

  let(:maturing_item) {described_class.new(name: "Stinking Archbishop", quality: 3, sell_in: 3)}
  let(:very_mature_item) {described_class.new(name: "Reeky Pope", quality: 50, sell_in: 3)}

  describe '#update_quality' do

    it 'should increase the quality of the item by the default amount' do
      maturing_item.update_quality
      expect(maturing_item.quality).to eq(4)
    end

    it 'should not increase the quality beyond the upper limit of 50' do
      very_mature_item.update_quality
      expect(very_mature_item.quality).to eq(50)
      #expect{very_mature_item.update_quality}.to_not change{very_mature_item.quality}.by(1)
    end
  end


  describe '#update_status' do

    it 'should increase in quality as it decreases by sell_in' do
      maturing_item.update_status
      expect(maturing_item.sell_in).to eq(2)
      expect(maturing_item.quality).to eq(4)
    end
  end
end
