# Study the following code and state what will be displayed... and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}."
puts "My array looks like this now: #{my_array}."

# The output should look like this:

# My string looks like this now: "pumpkins".
# My array looks like this now: ["pumkins", "rutabaga"]

# Shoveling a paramater into an array is no problem, as it mutates the caller,
# or the original object. But concatenating a string with += creates a new space
# in memory, or a different object.
