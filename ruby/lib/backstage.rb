require_relative 'standard_item'

class Backstage < StandardItem

  def initialize(args)
    super
  end

  def update_quality
    quality_increase
  end

  def quality_increase
   return expire if sell_in <= 0
    self.quality += 1 if sell_in <= 5
    self.quality += 1 if sell_in <= 10
    self.quality += 1
  end

  def expire
    self.quality = 0
  end

end
