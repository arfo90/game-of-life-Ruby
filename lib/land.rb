class Land
 attr_accessor :landGrid

 def initialize(land_size = 0)
  if land_size == 0 
   @landGrid = [[],[]]
  else
   scale_grid(land_size)
  end
 end

 def scale_grid(grid_size)
  @landGrid = Array.new(2){Array.new(grid_size)}
 end
end
