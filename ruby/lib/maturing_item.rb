require 'standard_item'

class MaturingItem < StandardItem

  def initialize(args)
    super
  end

  def update_quality
    return if quality == MAXIMUM_QUALITY
    quality_increase
  end

  private

  def quality_increase
    self.quality += 1
  end

end
