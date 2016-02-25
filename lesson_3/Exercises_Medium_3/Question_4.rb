# To drive that last one home... let's turn the tables and have the string
# show a modified output, while the array thwarts the method's efforts
# to modify the caller's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param.gsub!('pumpkins', 'rutabaga')
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# This time, using a method with the '!' at the end should mutate the caller,
# or original object, so the output shout be:
# My string looks like this now: rutabaga -- Substituting 'pumpkins' for 'rutabaga'

# The array should look the same:
# My array looks like this now: [pumpkins], because it points to the original variable.