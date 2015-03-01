require 'test/unit'
require_relative '../lib/land'

class TestLand < Test::Unit::TestCase

 def test_game_land_class_exists
  assert_nothing_raised do 
    Land.new
  end
 end 

end
