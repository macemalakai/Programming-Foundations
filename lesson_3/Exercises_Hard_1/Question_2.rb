greetings = { a: 'hi'}
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting
puts greetings

# What is thr result of the last line in the code below?

# { a: 'hi there'}
# greetings now equals infromal_greeting, so the output should be the same.