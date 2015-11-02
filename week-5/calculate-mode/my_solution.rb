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
=begin
Which data structure did you and your pair decide to implement and why?
We used hashes and arrays. Mostly our solution contains hashes.
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
Yes, we were able to break it down as much as we could, but the pseudocode was not very helpful for this challenge. This challenge was difficult.
What issues/successes did you run into when translating your pseudocode to code?
We had to look up a lot of things because our initial solution was not working. Our pseudocode was not as detailed as it should have been.
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used .each do to iterate through the array and throught the hash that we used. We didn't use any new methods that we didn't already know.
=end