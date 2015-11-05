# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [1] hours on this challenge.

# Pseudocode

# Input:array of strings
# Output:random string from the array
# Steps:
=begin
#1.Create the die class with an array as the parameter
  a. If array is empty, return an argument error
2.Define number of sides in die as number of characters passed in array
3.select a random character from array
4.show the random character selected
=end
#
#
# Initial Solution

# class Die
#   def initialize(labels)
#     @array = labels
#     raise ArgumentError if @array.length == 0
#   end

#   def sides
#     return @array.length
#   end

#   def roll
#     @array.sample
#   end
# end



# Refactored Solution
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

# Reflection
=begin
1.What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
I don't think the logic was much different. In fact, I found that each section was basically the same, except that I was no longer dealing with numbers but with letters. Everything is almost identical to what it was on the first die challenge.
2.What does this exercise teach you about making code that is easily changeable or modifiable?
It is highly efficient to make code that is easily changeable. It saves you a lot of time. In fact, I think writing this reflection out took me longer than solving the actual coding part of the challenge.
3.What new methods did you learn when working on this challenge, if any?
I learned about .sample. It randomly chooses a character from a string.
4.What concepts about classes were you able to solidify in this challenge?
Classes are collections of behaviors, and such collections of behaviors can be easily implemented to different situations. This challenge helped me see how easy it is to implement such behaviors to different objects.
=end