# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


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