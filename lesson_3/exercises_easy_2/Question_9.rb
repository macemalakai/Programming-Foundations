flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Using array#map!, shorten each of these names to just 3 characters.

new_flintstones = flintstones.map! do |word|
  word[0..2]
end

puts new_flintstones