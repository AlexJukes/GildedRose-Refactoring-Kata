require './lib/item'

class StandardItem < Item

  DEFAULT_AMOUNT = 1
  DOUBLE_AMOUNT = 2
  SELL_BY_LIMIT = 0
  MINIMUM_QUALITY = 0
  MAXIMUM_QUALITY = 50

  def initialize(args)
    @name = args[:name]
    @quality = args[:quality]
    @sell_in = args[:sell_in]
  end

  def update_status
    update_sell_in
    return if quality == MINIMUM_QUALITY
    update_quality
  end

  def update_sell_in
    self.sell_in -= DEFAULT_AMOUNT
  end

  def update_quality
    return if quality == MINIMUM_QUALITY
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
    self.quality -= DOUBLE_AMOUNT
  end
end
