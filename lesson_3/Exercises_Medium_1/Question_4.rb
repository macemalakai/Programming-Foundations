# What happens when we modify an array while we are iterating over it? 
# What would be the output by this code?

#numbers = [1, 2, 3, 4]   
#numbers.each do |number|
#  p number
#  numbers.shift(1)
#end

# The output should look like this:
# 1
# 3

# It printed the first number, then got rid of the value at index 1, or the '2'. The
# next number to print was '3', at index 2. It then shifted that and only
# two values remained, at indeces 1 and 2. These indeces were already printed however.

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# This should ouput:

# 1
# 2

# These two are left to print because their indeces stayed the same as the other
# values were popped off of the end.

