# I worked on this challenge [by myself].
# This challenge took me [1] hours.


# Pseudocode
=begin
input:numbers form 1 to 100
output: numbers, fizz if divisible by 3, buzz if divisible by 5, fizzbuzz if divisible by 15.
steps:
1.create a method
2.give the method a range of numbers (1 to 100) as its input
3.make the input an array and print it out to the screen
4. set conditions as follows:
  a. if the number is divisible by 15, replace it with the word "FizzBuzz"
  b. if the number is divisible by 3, replace the number with the word "Fizz"
  c. if the number is divisible by 5, replace it with the word "Buzz"
5. print the final array to the screen


=end


# Initial Solution
# def super_fizzbuzz(array)
#    numbers = (array).to_a
#   p numbers.map! {|x|
#   if x % 15 == 0
#     x = "FizzBuzz"
#   elsif x % 3 == 0
#     x = "Fizz"
#   elsif x % 5 == 0
#     x = "Buzz"
#   else x
#   end }
# end

# super_fizzbuzz(1..100)



# Refactored Solution
def super_fizzbuzz(array)
   numbers = (array).to_a
  p numbers.map! {|x|
      if x % 15 == 0 then x = "FizzBuzz"
      elsif x % 3 == 0 then x = "Fizz"
      elsif x % 5 == 0 then x = "Buzz"
      else x
      end }
end
super_fizzbuzz(1..100)



# Reflection
=begin
What concepts did you review in this challenge?
I reviewed array methods as well as iterating through an array.
What is still confusing to you about Ruby?
I feel more comfortable with Ruby now. Sometimes the code fails and we don't understand for a bit but then it dawns on us minutes or maybe hours later.
What are you going to study to get more prepared for Phase 1?
I feel like I need to work on more challenges to solidify my understanding of Ruby much more.
=end