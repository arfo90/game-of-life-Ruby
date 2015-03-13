class Explorer
  attr_accessor :world_grid

  def initialize(world_grid) 
    raise ArgumentError, "Land Grid is not yet set. should pass 2d array" unless world_grid.is_a?(Array)	
   
    @world_grid = world_grid
  end
end
