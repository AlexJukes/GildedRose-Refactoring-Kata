class Conjured < StandardItem



  def initialize(args)
    super
  end

  def update_quality
    self.quality -= DOUBLE_AMOUNT
  end
end
