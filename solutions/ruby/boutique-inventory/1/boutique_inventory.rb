class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    items.map { |item| item[:name] }.sort
  end

  def cheap
    items.select do |item|
      item[:price] < 30
    end
  end

  def out_of_stock
    items.select do |item|
      item[:quantity_by_size].empty?
    end
  end

  def stock_for_item(name)
    item = items.find do |item|
      item[:name] == name
    end

    return if item.nil?

    item[:quantity_by_size]
  end

  def total_stock
    items.flat_map { |item| item[:quantity_by_size].values }.sum
  end

  private

  attr_reader :items
end
