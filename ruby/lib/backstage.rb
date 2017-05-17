require_relative 'standard_item'



class Backstage < StandardItem

  CONCERT_SOON = 10
  CONCERT_VERY_SOON = 5

  def initialize(args)
    super
  end

  def update_quality
    quality_increase
  end

  def quality_increase
   return expire if sell_in <= SELL_BY_LIMIT
    self.quality += DEFAULT_AMOUNT if sell_in <= CONCERT_VERY_SOON
    self.quality += DEFAULT_AMOUNT if sell_in <= CONCERT_SOON
    self.quality += DEFAULT_AMOUNT
  end

  def expire
    self.quality = MINIMUM_QUALITY
  end

end
