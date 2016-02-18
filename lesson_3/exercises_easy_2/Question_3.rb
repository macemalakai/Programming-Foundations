ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# Throw out the really old people (agee 100 or older).

ages.keep_if do |name, age|
  age < 100
end

p ages
