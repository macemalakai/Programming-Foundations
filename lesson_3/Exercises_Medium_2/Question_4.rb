sentence = "Humpty Dumpty sat on a wall."

# Use string#split in conjunction with Array#join to break up this
# string and put it back together again. Do so they are returned in reverse order.

puts sentence.split().reverse.join(" ")