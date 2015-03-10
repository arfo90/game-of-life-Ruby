class Tools
  
 def rand_seed
  randomValue = rand(0..1)
  if randomValue == 0
    return "-"
  else randomValue == 1
    return "*"
  end
  raise "Random method has issue"
 end
end
