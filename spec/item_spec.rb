require './lib/item'
require './lib/vendor'

RSpec.describe Item do

  it "exists" do
    item = Item.new({name: 'peach', price: "$0.01"})
    expect(item).to be_an(Item)
  end

  it "can have items" do 
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: '$0.50'})
    expect(item2.name).to eq("Tomato")
    expect(item2.price).to eq(0.5)
  end
end