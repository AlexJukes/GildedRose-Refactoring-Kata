class EmbossedLilly

  def initialize(items)
    @items = items
  end

  def update_status()
    @items.each do |item|
      item.update_status
    end
  end

end
