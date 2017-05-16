describe StandardItem do

  let(:standard_item) {described_class.new("Boots", 3, 3)}

  describe '#sell_in' do
    it 'reduces the number of days remaining to sell by 1' do
        standard_item.update_sell_in

    end
  end
end
