class StandardItem < Item

  DEFAULT_AMOUNT = 1
  SELL_BY_LIMIT = 0

  def initialize(args)
    @name = args[:name]
    @quality = args[:quality]
    @sell_in = args[:sell_in]
  end

  def update_sell_in
    self.sell_in -= DEFAULT_AMOUNT
  end

  def update_quality
    penalty_reduction if sell_in <= SELL_BY_LIMIT
    reduction
  end

  private

  def reduction
    self.quality -= DEFAULT_AMOUNT
  end

  def penalty_reduction
    self.sell_in -= DEFAULT_AMOUNT * 2
  end
end
