require 'item'

describe Item do

  let(:item) {described_class.new("Jacket", 3, 3)}
  describe '#initialize' do
    it 'initializes with name, quality and sell-in variables' do
      expect(item.name).to eq("Jacket")
      expect(item.quality).to eq(3)
      expect(item.sell_in).to eq(3)
    end
  end

end
