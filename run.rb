require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
woodland = Zoo.new("Woodland Park Zoo", "Seattle")
san_diego = Zoo.new("San Diego Zoo", "San Diego")
other_zoo = Zoo.new("Other Zoo", "Seattle")

polo = Animal.new("Polar Bear", 800, "Polo")
lemmy = Animal.new("Ring Tailed Lemur", 5, "Lemmy")
larry = Animal.new("Ring Tailed Lemur", 4.7, "Larry")
kitty = Animal.new("Tiger", 450, "Kitty")

polo.zoo = woodland
lemmy.zoo = woodland
larry.zoo = woodland
kitty.zoo = san_diego


binding.pry
puts "done"
