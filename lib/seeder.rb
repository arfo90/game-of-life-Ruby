require_relative 'tools'

class Seeder
 attr_accessor :land_grid

 def initialize(land_grid)
  raise ArgumentError, "Land Grid is not yet set. should pass 2d array" unless land_grid.is_a?(Array)	
  
  @land_grid = land_grid 
 end  
 
 def seed
  seeded_world = @land_grid
  tools = Tools.new()
  @land_grid[0].size.times do |i|
    @land_grid[0].size.times do |j|
     seeded_world[i][j] = tools.rand_seed
    end  
  end
 
  seeded_world
 end 

 def seeded_world
  self.seed
 end
 
end
