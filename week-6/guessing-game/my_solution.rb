# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input:a number called guess
# Output:high if higher than answer, low if lower than answer, correct if guess matches answer
# Steps:
=begin
  1. define the class.
  2. initialize the class by giving it a number called answer.
  3. define a method called guess that evaluates a number you give it, called guess.
  4. compare the guess to the answer
    a.if the guess is higher than the answer,  show "high"
    b.if the guess is lower than the answer, show "low"
    c.if the guess is the same as the answer, show "correct".
  5. if the game has been solved, say true. otherwise if it hasn't been solved, say false.
=end


# Initial Solution
# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(guess)
#     @guess = guess
#     return :high if @guess > @answer
#     return :correct if @guess == @answer
#     return :low if @guess < @answer
#   end

#   def solved?
#     if @guess == @answer
#       true
#     else
#       false
#     end
#   end
# end



# Refactored Solution

class GuessingGame
  attr_reader :answer
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      :high
    elsif @guess == @answer
      :correct
    else @guess < @answer
      :low
    end
  end

  def solved?
    @guess == @answer
  end
end

# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Instance variables and instance methods help store information and they allow you to access that information in many different situations.Instance methods allow us to create multiple behaviors for a given set of data.
When should you use instance variables? What do they do for you?
Instance variables help store data in a place where you can access it later on. They are useful when you have to access that information in other methods within a given class.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
An overview of flow control: "Conditionals and loops alter the flow of a Ruby program. Conditionals are keywords that execute a certain statement under a specific condition. Loops are blocks of program that are executed multiple times. When the program is run, the statements are executed from the top of the source file to the bottom. One by one." I did not struggle witht he flow control in this challenge. The reason why I did not struggle was because the directions were clear.
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
Symbols are very much like integers, they stand for nothing other than themselves.

=end