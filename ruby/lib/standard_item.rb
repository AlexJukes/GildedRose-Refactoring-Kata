class StandardItem < Item

  DEFAULT_AMOUNT = 1

  def initialize(args)
    @name = args[:name]
    @quality = args[:quality]
    @sell_in = args[:sell_in]
  end

  def update_sell_in
    self.sell_in -= DEFAULT_AMOUNT
  end

  def update_quality
    self.quality -= DEFAULT_AMOUNT
  end
end
