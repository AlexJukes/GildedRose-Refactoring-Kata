require 'conjured'

describe Conjured do

  let(:conjured) {described_class.new(name: "Conjugation", quality: 10, sell_in: 5)}

  describe '#update_quality' do
    it 'reduces the quality twice as fast as normal' do
      conjured.update_quality
      expect(conjured.quality).to eq(8)
    end
  end
end
