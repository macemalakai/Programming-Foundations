munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Figure out the total age of just the male members of the family.

total_age_of_males = 0

munsters.each do |name, hash|
  case hash["gender"]
  when "male"
    total_age_of_males += hash["age"]
  end
end

p total_age_of_males