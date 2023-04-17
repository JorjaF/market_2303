require './lib/item'
require './lib/vendor'

RSpec.describe Vendor do

  it "exists" do
    vendor = Vendor.new("Noname")
    expect(vendor).to be_a(Vendor)
  end

  it "has attributes" do 
    vendor = Vendor.new("Rocky Mountain Fresh")
    expect(vendor.name).to eq("Rocky Mountain Fresh")
    expect(vendor.inventory).to eq({})
  end

  it "can check stock" do
    vendor = Vendor.new("Rocky Mountain Fresh")
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    expect(vendor.check_stock(item1)).to eq(0)
  end

  it "can add stock" do
    vendor = Vendor.new("Rocky Mountain Fresh")
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    vendor.stock(item1, 30)
    expect(vendor.check_stock(item1)).to eq(30)
    vendor.stock(item1, 25)
    expect(vendor.check_stock(item1)).to eq(55)

    item2 = Item.new({name: 'Tomato', price: '$0.50'})
    vendor.stock(item2, 12)
    expect(vendor.check_stock(item2)).to eq(12)
    vendor.inventory
    expect(vendor.inventory).to eq({item1 =>55, item2 => 12})


    

  end

end
  