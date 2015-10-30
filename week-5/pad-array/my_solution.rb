# Pad an Array

# I worked on this challenge [by myself, with: Clinton Weber]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#array, size of array, optional value to pad the array.
# What is the output? (i.e. What should the code return?)
#an array, padded if necessary.
# What are the steps needed to solve the problem?
#1. define the method.
#2. give the method parameter (array, b_size, optional value)
#3. check length of the array to see if it is less than the minimum size.
  #if b_size is less than or equal to the length of the array, it should return the original array.
  #if the b_size is bigger than the array, "pad" the array.
#4. find the difference between elements in array and b_size.
#5. create variable to pad array.
#6. add created variable to the array until array length = b_size.
#7. return modified array

# # 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#     difference = min_size - array.length
#     if difference <= 0
#       return array
#     else difference.times{array.push(value)}
#       return array
#     end
# end
# p pad!([1,2,3], 5)

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = array.dup
#     difference = min_size - array.length
#     if difference <= 0
#       return new_array
#     else difference.times{new_array.push(value)}
#       return new_array
#     end
# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
    difference = min_size - array.length
    difference <= 0? array: difference.times{array.push(value)}
      return array
end

def pad(array, min_size, value = nil) #non-destructive
    new_array = array.dup
    difference = min_size - array.length
    difference <= 0? new_array: difference.times{new_array.push(value)}
      return new_array
end


# 4. Reflection
# Were you successful in breaking the problem down into small steps?
# We were able to create
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# How readable is your solution? Did you and your pair choose descriptive variable names?
# What is the difference between destructive and non-destructive methods in your own words?