# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Kris Bies]

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
# What is the input? An array of numbers/strings
# What is the output? (i.e. What should the code return?) Array with frequent values.
# What are the steps needed to solve the problem?
# 1- Define method
# 2- Feed input to accept array
# 3- Check which values match
# 4- Put those values into new array
# 5- Returns an array with the most frequent values.
# 1. Initial Solution
# def mode array
# hash = Hash.new(0)
# array.each do |x|
# hash[x] += 1
# end


# new_array = Array.new
# var1 = 0
# hash.each do |key, value|
# if value == var1
# give.push (key)
# else value > var1
# give = [key]

# end
# end
# return new_array
# end
# 3. Refactored Solution
def mode(array)
  frequency = Hash.new(0)
  array.each do |x|
    frequency[x] += 1
 end
  mode_array = []
  frequency.each do |y, z|
    if z == frequency.values.max
      mode_array << y
    end
  end
  mode_array.sort
end


# 4. Reflection