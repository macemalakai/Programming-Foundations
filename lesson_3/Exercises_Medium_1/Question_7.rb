limit = 15

def fib(first_num, second_num, #limit)
# limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, #15)
puts "result is #{result}"

# There was an error. Something about the limit variable. What's wrong
# with the code?

# The method is trying to reach the limit variable, which is outside of its scope.
# We could fix this by making a limit variable inside of the method's scope.

# We could also pass it in as a third argument when we call the method.