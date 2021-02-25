require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'

class DishTest < Minitest::Test

  def test_it_exists_and_has_attributes
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_instance_of Dish, dish
    assert_equal "Couscous Salad", dish.name
    assert_equal :appetizer, dish.category
  end

  

end
