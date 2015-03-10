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

 def test_seeder_seed_grid
  grid = Array.new(3){Array.new(2)}
  seeder_object = Seeder.new(grid)
  grid = seeder_object.seeded_world
  assert_not_nil(grid[0][1], "world is not seeded, grid must be filled in") 
 end

 def test_seeder_seed_grid_randomly
  grid = Array.new(10){Array.new(10)}
  seeder_object = Seeder.new(grid)
  grid = seeder_object.seeded_world
  assert_nothing_raised do
    raise unless grid[0][1] == "*" or grid[0][1] == "-"
  end
 end
end
