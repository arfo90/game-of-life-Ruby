require 'test/unit'
require_relative '../lib/explorer'

class TestSeeder < Test::Unit::TestCase

 def setup
   @grid = [[""],[""]]
 end

 def test_explorer_class_exist
   assert_nothing_raised do
    Explorer.new(@grid)
   end
 end

 def test_explorer_initialize_with_world_grid
   assert_nothing_raised "world grid [[][,]] should be initialized" do
    Explorer.new(@grid)
   end
 end

=begin  
 def test_explor_method_accept_hash
   explorer = Explorer.new(@grid)
   assert_nothing_raised "there is an issue with passing state to explore method" do
    state = {:alive => true}
    alive = explorer.explore(state)
   end
 end
=end

 def test_explorer_method_should_accept_grid_index
  grid = Array.new(3){Array.new(3)}
  explorer = Explorer.new(grid)
  assert_nothing_raised "explorer method should accept world grid index" do
    explorer.explore(x=1, y=1)
  end
 end

 def test_explorer_count_alive_surrending_cells
  grid = Array.new(3){Array.new(3)}
  expected = 8
  grid[0].size.times do |i|
    grid[0].size.times do |j|
      grid[i][j] = "*"
    end
  end

  explorer = Explorer.new(grid)
  actual =  explorer.explore(x=1, y=1)
  
  assert_equal expected, actual, "Exploring the grid has problem, should return #{expected} instead of #{actual}"
 end

 def test_explorer_count_alive_surrending_cells_for_first_cell
  grid = Array.new(3){Array.new(3)}
  expected = 3
  grid[0].size.times do |i|
    grid[0].size.times do |j|
      grid[i][j] = "*"
    end
  end

  explorer = Explorer.new(grid)
  actual =  explorer.explore(x=0, y=0)
 
  assert_equal expected, actual, "Exploring the grid has problem, should return #{expected} instead of #{actual}"
 end

=begin
 def test_explorer_count_alive_surrending_cells_for_first_cell
  grid = Array.new(3){Array.new(3)}
  expected = 3
  grid[0].size.times do |i|
    grid[0].size.times do |j|
      grid[i][j] = "*"
    end
  end

  explorer = Explorer.new(grid)
  actual =  explorer.explore(x=3, y=0)
 
  assert_equal expected, actual, "Exploring the grid has problem, should return #{expected} instead of #{actual}"
 end
=end

end
