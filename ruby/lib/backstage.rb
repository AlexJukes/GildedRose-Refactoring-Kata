require 'maturing_item'

class Backstage < MaturingItem

  def initialize(args)
    super
  end


  def quality_increase
    return self.quality += 3 if sell_in <= 5
    return self.quality += 2 if sell_in <= 10
    self.quality += 1
  end

end
