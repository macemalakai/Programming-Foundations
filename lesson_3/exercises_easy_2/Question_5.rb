ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# Add ages for Marilyn and Spot to the existing hash.

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

puts ages.merge!(additional_ages)