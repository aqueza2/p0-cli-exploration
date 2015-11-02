# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:a number from 1-6
# Output:random number from 1-6
# Steps:
=begin
1.Create the die class with a given parameter
  a. If parameter is less than 1, generate argument error.
2.Define a variable for the argument
3.Generate a random number
4.Return the random number
=end
# 1. Initial Solution

class Die

  def initialize(sides)
    @side_param = sides
      raise ArgumentError if sides < 1
  end

  def sides
    return @side_param
  end

  def roll
    rand(1..@side_param)
  end

end

# 3. Refactored Solution
class Die

  def initialize(sides)
    @side_param = sides
      raise ArgumentError if sides < 1
  end

  def sides
    return @side_param
  end

  def roll
    rand(1..@side_param)
  end

end


# 4. Reflection