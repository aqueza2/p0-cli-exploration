# I worked on this challenge [by myself, with: ].
# This challenge took me [1.5] hours.

# Pseudocode
=begin
FIRST check to see what the properties of a fibonacci number are
THEN implement that equation into a method that takes in an integer
CREATE  a method that checks to see if a number is a perfect square
IF the number if not a perfect square, it cannot be a fibonacci number
IF the number is a perfect square, pass it along to see if it follows the equation.
SINCE the number you passed does prove the equations to be true, it is a fibonacci number
OTHERWISE it is not.

=end

# Initial Solution

# A number is Fibonacci if and only if one or both of (5*n2 + 4) or (5*n2 – 4) is a perfect square

# def issqr(num)
#    sqrt = Math::sqrt(num)
#    sqrt == sqrt.round
# end

# def is_fibonacci?(num)
#   if (issqr(5 * (num**2) + 4) || issqr(5 * (num**2) -4)) || (issqr(5 * (num**2) + 4) && issqr(5 * (num**2) -4))
#     return true
#   else
#     false
#   end
# end



# Refactored Solution
def is_fibonacci?(num)
  n1 = Math.sqrt((5 * (num ** 2)) + 4)
  n2 = Math.sqrt((5 * (num ** 2)) - 4)
  if n1 == n1.round || n2 == n2.round || (n1 == n1.round && n2 == n2.round)
     true
  else
     false
  end
end


# Reflection
=begin
What concepts did you review or learn in this challenge?
I reviewed how to write methods in Ruby and how to incorporate methods into other methods.
What is still confusing to you about Ruby?
I felt a lot more confident now that I also know JS. It seems like programming in its entirety is a similar thing across languages even though the syntax is different.
What are you going to study to get more prepared for Phase 1?
I need to try some of the harder challenges. For example, when we had the bingo challenge I struggled a lot, so I will try the bingo 2 challenge and as many of the ruby review challenges to try to get a better handle on things. I also need to refresh my memory and try practicing some methods. I will also try to go on codeacademy and practice there.

=end