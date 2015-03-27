require 'rufus-scheduler'
require_relative 'lib/tools'

scheduler = Rufus::Scheduler.new

scheduler.repeat '5s' do
  start_print
end

def start_print
 grid = Array.new(40){Array.new(40)}
 tools = Tools.new()
 
  grid[0].size.times do |i|
    grid[0].size.times do |j|
      grid[i][j] = tools.rand_seed 
    end  
  end

  
  grid[0].size.times do |i|
    grid[0].size.times do |j|
     print grid[i][j].to_s
    end 
    print "\n" 
  end
end 


scheduler.join
