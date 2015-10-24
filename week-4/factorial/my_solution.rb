# Factorial

# I worked on this challenge [by myself, with: Walter Kerr].


# Your Solution Below
# def factorial(number)
#   if number > 0
#     number * (number-1)
#   else
# end
# end
# puts factorial(5)

def factorial(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end

puts factorial(5)