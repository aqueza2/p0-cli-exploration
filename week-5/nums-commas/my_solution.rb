# Numbers to Commas Solo Challenge

# I spent [5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
=begin
What is the input?
A positive integer goes in.
What is the output? (i.e. What should the code return?)
The same integer but returned as a string, separated with commas for place value.
What are the steps needed to solve the problem?
1. define method, give it integer as input.
2.Turn integer into a string
3.Break down the integer given (split)
4. Insert a comma after every 3 index places
5. return string in new array with commas

=end
# 1. Initial Solution
def separate_comma(integer)
  array = ((integer.to_s.reverse.split("").each_slice (3)).map{|i| i.join}.join(",")).reverse
end
p separate_comma (11111000000)


# 2. Refactored Solution
def separate_comma(integer)
  array = ((integer.to_s.reverse.split("").each_slice (3)).map(&:join).join(",")).reverse
end

# 3. Reflection
=begin
1.What was your process for breaking the problem down? What different approaches did you consider?
What helped me a lot with this was that I was able to visualize how everything would happen. I pictured the whole process and I tried to break it into small steps.
2.Was your pseudocode effective in helping you build a successful initial solution?
Yes, my pseudocode was very effective. I was surprised by how easy it was for me to get through the first couple of steps. Then I hit a bump, but it was just about syntax. Overall I think my pseudocode was effective.
3.What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
I had a really hard time trying to figure out how to insert the commas into my number. I knew about slice, and I knew about each, but I never knew there was a method called each_slice that would split my numbers in pairs of three. My initial solution was pretty dead on (but it took me 5 hours to figure out), so when I refactored I just changed the block of map from {|i|i} to {&}.
4.How did you initially iterate through the data structure?
I used map to iterate thorugh the data structure.
5.Do you feel your refactored solution is more readable than your initial solution? Why?
No, I feel like my initial solution is as short and concise as it can be. I don't know of any other methods that would help me make it shorter. I think  it is pretty short as it is.
=end