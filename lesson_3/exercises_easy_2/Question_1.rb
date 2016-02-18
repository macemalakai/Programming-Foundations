ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# See if there's an age present for "Spot".


puts ages.include?("Spot")
puts ages.has_key?("Spot")
puts ages.fetch("Spot")