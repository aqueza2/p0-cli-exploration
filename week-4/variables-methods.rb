
puts "Hello there, and what\'s your first name"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hello, "+first_name+" "+middle_name+" "+last_name+"! "

puts "What is your favorite number?"
favorite_number = gets
puts (favorite_number.to_i  + 1).to_s + " is a bigger and better number!"


# links:
#4.3 define-method
# https://github.com/aqueza2/p0-cli-exploration/blob/master/week-4/define-method/my_solution.rb
#4.3.1
#https://github.com/aqueza2/p0-cli-exploration/blob/master/week-4/address/my_solution.rb
#4.3.2
# https://github.com/aqueza2/p0-cli-exploration/blob/master/week-4/math/my_solution.rb

#REFLECTION
# How do you define a local variable?
# A local variable is an object that can only be used in the method that it is specified in. Variables can point to any object you want it to (strings, integers, etc.)
# How do you define a method?
# A method is like a verb. It does something to the variable you are calling that method on.
# What is the difference between a local variable and a method?
# The difference is that the local variable is like a noun, and that a method is like a verb. You need objects in ruby in order for methods to exist.
# How do you run a ruby program from the command line?
# "ruby filename.rb"
# How do you run an RSpec file from the command line?
# "rspec filenamerspec.rb"
# What was confusing about this material? What made sense?
# Too many things were confusing with this. I couldn't understand first why my methods wouldn't run, then I realized I had to put end at the end of every method. Then, I couldn't understand what file to run with rspec because it was not clear in the directions. It just said run the rspec file. After I figured that out, I couldn't figure out why I would get failures when my method was correct, and it was all because I kept putting "puts" and not returns, and then I remembered that you had specified that in one of the earlier challenges that puts only printed the string, and it didn't actually compute anything.