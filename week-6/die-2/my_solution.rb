# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:array of strings
# Output:random string from the array
# Steps:
=begin
#1.Create the die class with an array as the parameter
  a. If array is empty, return an argument error
2.
3.Generate a string in the array
4.Return the random number
=end
#
#
# Initial Solution

class Die
  def initialize(labels)
    @array = labels
    raise ArgumentError if @array.length == 0
  end

  def sides
    return @array.length
  end

  def roll
    @array.sample
  end
end



# Refactored Solution








# Reflection