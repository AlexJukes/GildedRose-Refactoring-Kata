require_relative 'standard_item'

class MaturingItem < StandardItem

  def initialize(args)
    super
  end

  def update_status
    update_sell_in
    update_quality
  end

  def update_quality
    quality_increase
    self.quality = MAXIMUM_QUALITY if quality >= MAXIMUM_QUALITY
  end

  private

  def quality_increase
    self.quality += DEFAULT_AMOUNT if sell_in < SELL_BY_LIMIT
    self.quality += DEFAULT_AMOUNT
  end

end
