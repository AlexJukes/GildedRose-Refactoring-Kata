class StandardItem < Item

  DEFAULT_AMOUNT = 1
  SELL_BY_LIMIT = 0

  def initialize(args)
    @name = args[:name]
    @quality = args[:quality]
    @sell_in = args[:sell_in]
  end

  def update_status
    update_sell_in
    update_quality
  end

  def update_sell_in
    self.sell_in -= DEFAULT_AMOUNT
  end

  def update_quality
    if sell_in <= SELL_BY_LIMIT
    quality_penalty_reduction
    else
    quality_reduction
    end
  end

  private

  def quality_reduction
    self.quality -= DEFAULT_AMOUNT
  end

  def quality_penalty_reduction
    self.quality -= DEFAULT_AMOUNT * 2
  end
end
