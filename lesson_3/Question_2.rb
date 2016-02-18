# What's the difference between ? and ! in Ruby?

# The ! is used at the end of some methods to denote that it's destructive, and a ?
# at the end of the method denotes that it's checking for something within 
# it's parameter.

# 1.) What is != and where should you use it?

# This means 'not equal to', and should be used when evaluating an expression, 
# often in an if statement.

# 2.) Putting ! before something like !user_name.

# This will make !user_name evaluate to false.

# 3.) Put ! after something, like words.uniq!

# This will make .uniq destructive, and it will mutate the caller.

# 4.) Put ? before something

# I have no idea.

# 5.) Put ? after something.

# If part of a method it will check against something.

# 6.) Put !! before something like !!user_name

# This will make user_name evaluate to true.
