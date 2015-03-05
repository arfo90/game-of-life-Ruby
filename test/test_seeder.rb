require 'test/unit'
require_relative '../lib/seeder'

class TestSeeder < Test::Unit::TestCase
 
 def test_seeder_class_exist
  grid = [[],[]]
  assert_nothing_raised do
   Seeder.new(grid)
  end
 end
 
 def test_seeder_class_initialize_with_world_grid
  grid = [[],[]]
  assert_nothing_raised do 
   Seeder.new(grid)
  end
 end
end
