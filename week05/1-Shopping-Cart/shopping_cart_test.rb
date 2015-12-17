require 'minitest/autorun'

require_relative 'shopping_cart.rb'

class ShoppingCardTest < Minitest::Test
  def test_register_item_in_inventory
    inventory = Inventory.new

    inventory.register 'Green Tea', '1.99'
    inventory.register 'Red Tea',   '2.49'
    inventory.register 'Earl Grey', '1.49'

    assert_equal 3, inventory.length
  end
end
