class Market
  attr_reader :name,
              :item,
              :vendors

  attr_accessor :item,                :item,
                :vendors

  def initialize(name)
    @name = name
    @vendors = []
    
  end
  def vendor_names
    @vendors << vendors
  end
end