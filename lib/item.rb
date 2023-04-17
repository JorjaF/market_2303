class Item
  attr_reader :name,
              :price

  def initialize(name:, price:)
    @name = name
    @price = price.gsub("$","").to_f
  end
end