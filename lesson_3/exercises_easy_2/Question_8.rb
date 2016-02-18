flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be".

flintstones.each_with_index { |val, index| puts index if val.start_with?("Be")}