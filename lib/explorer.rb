class Explorer
  attr_accessor :world_grid

  def initialize(world_grid)
    raise ArgumentError, "Land Grid is not yet set. should pass 2d array" unless world_grid.is_a?(Array)

    @world_grid = world_grid
  end

=begin
  def explore(state = {:Alive => true})
    return 1
  end
=end

  def explore x, y
    current_x = x-1
    current_y= y-1
    total_alive = 0
    count = 2

    if x == 0
     count = 1
    end
    for i in 0..count
     for j in 0..count
       if (world_grid[current_x][current_y] = "*")
         total_alive +=1
       end
       current_y +=1
     end
     current_x +=1
    end
    if (world_grid[x][y] = "*")
      total_alive -=1
    end
    return total_alive
  end
end
