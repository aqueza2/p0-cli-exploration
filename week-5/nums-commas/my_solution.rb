# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
=begin
What is the input?
A positive integer goes in.
What is the output? (i.e. What should the code return?)
The same integer but returned as a string, separated with commas for place value.
What are the steps needed to solve the problem?
1. define method, give it integer as input.
2.Turn integer into a string
3.Break down the integer given (split)
4. Insert a comma after every 3 index spaces
5. return string in new array with commas

=end
# 1. Initial Solution
def separate_comma(integer)
  array = [integer].to_s
  return array.chars
end

puts separate_comma(1000000)


# 2. Refactored Solution




# 3. Reflection