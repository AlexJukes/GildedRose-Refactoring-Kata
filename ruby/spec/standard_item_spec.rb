require 'standard_item'

describe StandardItem do

  let(:boots) {described_class.new(name: "Boots", quality: 3, sell_in: 3)}

  describe '#sell_in' do
    it 'reduces the number of days remaining to sell by 1' do
        boots.update_sell_in
        expect(boots.sell_in).to eq(2)
    end
  end
end
