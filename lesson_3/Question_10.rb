flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

new_hash = {}

flintstones.each_with_index { |value, index| new_hash[value] = index}

puts new_hash