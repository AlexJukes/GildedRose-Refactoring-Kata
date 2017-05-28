class Sulfuras < StandardItem

  SULFURAS_QUALITY = 80

  def initialize(args)
    @name = args[:name]
    @quality = SULFURAS_QUALITY
    @sell_in = args[:sell_in]
  end

  def update_status
    return
  end

end
