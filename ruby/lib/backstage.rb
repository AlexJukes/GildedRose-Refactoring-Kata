require_relative 'maturing_item'

class Backstage < MaturingItem

  def initialize(args)
    super
  end


  def quality_increase
    return expire if sell_in == 0
    return self.quality += 3 if sell_in <= 5
    return self.quality += 2 if sell_in <= 10
    self.quality += 1
  end

  def expire
    self.quality = 0
  end

end
