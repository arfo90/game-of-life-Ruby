require 'test/unit'
require_relative '../lib/land'

class TestLand < Test::Unit::TestCase

 def test_land_class_exists
  assert_nothing_raised do 
    Land.new
  end
 end 

 def test_land_main_grid
  assert_nothing_raised do
    grid = Array.new
    land_object = Land.new
    grid = land_object.landGrid
  end
 end 

 def test_lenght_of_empty_land_grid
   expected_lenght = 0
   grid = Land.new.landGrid
   assert_nothing_raised do
     grid[0].size == expected_lenght
     grid[1].size == expected_lenght
   end
 end

end

