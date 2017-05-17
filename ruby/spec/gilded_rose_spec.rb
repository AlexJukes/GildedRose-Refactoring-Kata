require 'gilded_rose'

describe GildedRose do

  describe "#update_status" do
    it "does not change the name" do
      items = [StandardItem.new(name: "foo",quality: 0, sell_in: 0)]
      GildedRose.new(items).update_status
      expect(items[0].name).to eq "foo"
    end

  end
end
