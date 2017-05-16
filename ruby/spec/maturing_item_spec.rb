require 'maturing_item'

describe MaturingItem do

  let(:maturing_item) {described_class.new(name: "Stinking Archbishop", quality: 3, sell_in: 3)}

  describe '#update_status' do

    it 'should increase in quality as it decreases by sell_in' do
      maturing_item.update_status
      expect(maturing_item.sell_in).to eq(2)
      expect(maturing_item.quality).to eq(4)
    end
  end
end
