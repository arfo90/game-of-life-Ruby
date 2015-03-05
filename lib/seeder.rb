class Seeder
 attr_accessor :land_grid

 def initialize(land_grid)
  raise ArgumentError, "Land Grid is not yet set. should pass 2d array" unless land_grid.is_a?(Array)	
  
  @land_grid = land_grid 
 end  
end
