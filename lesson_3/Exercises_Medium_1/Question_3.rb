# puts "the value of 40 + 2 is " (40 + 2)

# The result of this statement will be an error.
# Why is this and what are two possible ways to fix this?

# You can't concatenate strings with fixnums.

puts "the value of 40 + 2 is " + (40 + 2).to_s + "."

puts "the value of 40 + 2 is #{40 + 2}."


# We can take the fixnums and convert them to a string, with (40 + 2).to_s

# Or we can use interpolation. "the value..... is #{40 + 2}."