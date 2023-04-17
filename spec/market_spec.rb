require './lib/item'
require './lib/vendor'
require './lib/market'

RSpec.describe Market do

  it "exists" do
    market = Market.new("Noname")
    expect(market).to be_a(Market)
  end

  it "has a name" do 
    market = Market.new("South Pearl Street Farmers Market")
    expect(market.name).to eq("South Pearl Street Farmers Market")
  end

  it "has vendors" do 
    market = Market.new("South Pearl Street Farmers Market") 
    vendor1 = Vendor.new("Rocky Mountain Fresh")
    expect(market.name).to eq("South Pearl Street Farmers Market")
    expect(market.vendors).to eq([])

    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: "$0.50"})
    item3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
    item4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})
    vendor1.stock(item1, 35)
    vendor1.stock(item2, 7)
    expect(vendor1.inventory).to eq({item1 =>35, item2 => 7})
    
    vendor2 = Vendor.new("Ba-Nom-a-Nom")
    vendor2.stock(item4, 50)
    vendor2.stock(item3, 25)
    expect(vendor2.inventory).to eq({item3 =>25, item4 => 50})

    vendor3 = Vendor.new("Palisade Peach Shack")
    vendor3.stock(item1, 65)
    expect(vendor3.inventory).to eq({item1 =>65})

    expect(market.vendors).to eq(["Rocky Mountain Fresh", "Ba-Nom-a-Nom","Palisade Peach Shack"])  
  end
end