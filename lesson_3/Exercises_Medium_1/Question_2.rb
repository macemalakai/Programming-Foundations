statement = "The Flintstones Rock"

# Create a hash that expresses the frequency with which each
# letter occurs in the string.

frequency_hash = {}

letters = ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  frequency_hash[letter] = letter_frequency if letter_frequency > 0
end

puts frequency_hash

