# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Walter Kerr].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: numbers in array
# Output:  sum of these numbers
# Steps to solve the problem.

# TAKE THE SUM OF ALL THE NUMBERS
# CREATE AN ARRAY OF NUMBERS
# CREATE A METHOD
# USE ITERATION TO TAKE EACH INPUT AND THEN, USING 'DO' | INPUT HERE |
# PUTS SOLUTION TO ADD INPUTS


# 1. total initial solution

# 3. total refactored solution
def total (array)
  total = 0
  array.each  do |i|
  total += i
end
return total
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: arrays for sentence parts
# Output: I want to go to the movies.
# Steps to solve the problem.

# CREATING A METHOD CALLED SENTENCE MAKER
# CREATING AN ARRAY
# USING PUTS, FOUND METHOD RELATED TO ARRAY TO JOIN SENTENCE
# MAKE MODIFICATIONS TO REST OF SENTENCE USING STRING METHODS


def sentence_maker(array)
  puts (array.join (' ')).capitalize.
end

# 5. sentence_maker initial solution



# 6. sentence_maker refactored solution