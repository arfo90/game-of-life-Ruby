require_relative 'explorer'
require_relative 'land'
require_relative 'seeder'

class Life
 attr_accessor :grid
 
 
 def state
  @grid
 end
 
 def run
  explorer = Explorer.new(@grid) 
  new_world = @grid  
  @grid[0].size .times do |x|
   @grid[0].size.times do |y|
    seeded_world[x][y] = tools.rand_seed
    state = explorer.explore(x=0, y=0)
    if (state < 2) 
      new_world[x][y] = "-"
    elseif (state > 3) 
      new_world[x][y] = "-"
    end
    if (state == 3 && @grid[x][y] == "-")
      new_world[x][y] = "*" 
    end
   end
   new_world
 end 
  
 end
 
end
