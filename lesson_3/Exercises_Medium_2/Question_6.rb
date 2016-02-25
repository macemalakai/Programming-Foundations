munsters= {
  "Herman" => {"age" => 32, "gender" => "male" },
  "Lily" => {"age" => 30, "gender" => "female" },
  "Grandpa" => {"age" => 402, "gender" => "male" },
  "Eddie" => {"age" => 10, "gender" => "male" },
  "Marilyn" => {"age" => 23, "gender" => "female" },
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)
# Did the family's data get ransacked, or did the mischief only mangle a local
# copy of the original hash?

# I would say it was only saved locally and would need to be saved
# to a new variable to be used in the future. 