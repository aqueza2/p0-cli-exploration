# Die Class 1: Numeric

# I worked on this challenge [by myself ]

# I spent [2] hours on this challenge.

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
=begin
What is an ArgumentError and why would you use one?
An ArgumentError is something that pops up when you don't give an argument that is within an acceptable range for your code to work.
What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I had never used rand to randomize numbers. I had also never used ranges. This was also the first time I used raise. At first I didn't give raise an if statment, but when I read more about it I was able to figure out that it needed one, then my code started working.
What is a Ruby class?
A ruby class is like a collection of objects, or as I understand it, it is a collection of behaviors. Ruby classes allow for the creation of objects in the masses.
Why would you use a Ruby class?
As it is stated in the Well Grounded Rubyist book, defining a class lets you group behaviors (methods) into convenient bundles, so that you can quickly create many objects that behave essentially the same way.
What is the difference between a local variable and an instance variable?
A local variable is only accessible within the method that you create it. An instance variable is accessible across methods in a given class. Instance variables begin with @, whereas local variables do not.
Where can an instance variable be used?
Instance variables can be used when you need to access something across methods. Instance variables allow individual objects to remember state.
=end