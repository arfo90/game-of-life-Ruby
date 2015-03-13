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
end 
