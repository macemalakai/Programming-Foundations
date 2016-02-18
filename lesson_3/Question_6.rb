# Starting with the string:
famous_words = "seven years ago..."
# Show two different ways to put the expected "Four score and " in front of it.
beginning_famous_words = "Four score and"

puts "Four score and " + famous_words

puts beginning_famous_words + " " + famous_words

puts "Four score and " << famous_words