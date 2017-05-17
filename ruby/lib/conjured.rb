class Conjured < StandardItem

  def initialize(args)
    super
  end

  def update_quality
    self.quality -= 2
  end
end
