def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

eval(how_deep)

# eval should actually treat it as a recursive method call, and add
# 8 to 2 five times, resulting in an output of 42.