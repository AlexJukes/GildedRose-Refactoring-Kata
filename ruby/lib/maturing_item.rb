require_relative 'standard_item'

class MaturingItem < StandardItem

  def initialize(args)
    super
  end

  def update_quality
    quality_increase
    self.quality = MAXIMUM_QUALITY if quality >= 50
  end

  private

  def quality_increase
    self.quality += DEFAULT_AMOUNT
  end

end
