# Given the munsters hash below :
PositiveInfinity = +1.0/0.0 

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

# Modify the hash such that each member of the Munster family has an additional
# "age_group" key that has one of three values describing the age group the family
# member is in (did, adult, or senior). Your solution should produce the hash below.

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

munsters.each do |name, hash|
  case hash["age"]
  when 0..17
    hash["age_group"] = "kid"
  when 18..64
    hash[":age_group"] = "adult"
  when 65..PositiveInfinity
    hash[":age_group"] = "senior"
  end
end

p munsters