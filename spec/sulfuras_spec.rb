require 'sulfuras'

describe Sulfuras do

  let(:sulfuras) {described_class.new(name: "Legendary Toilet Seat", sell_in: 1)}

  describe '#update status' do
    it 'should not change in status or sell_in value' do
      sulfuras.update_status
      expect(sulfuras.quality).to eq(80)
      expect(sulfuras.sell_in).to eq(1)
    end
  end
end
