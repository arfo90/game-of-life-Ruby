require 'test/unit'
require_relative '../lib/tools'

class TestTools < Test::Unit::TestCase

 def test_tools_class_exist
  raise unless Tools.new
 end 

 def test_tools_random
  tool = Tools.new
  random_val = tool.rand_seed
  puts random_val
  raise unless random_val == "*" or random_val == "-"
 end

end
