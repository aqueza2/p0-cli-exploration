# Count Between

# I worked on this challenge [by myself ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  if list_of_integers.length == 0 || lower_bound > upper_bound
    return 0
  elsif lower_bound == upper_bound
    return list_of_integers.length
   else  range = (lower_bound..upper_bound).to_a
  list_of_integers.select {|value|range.include?(value)}.length
end
end
#pseudocode
#array [3,5,7,10,22,23]
#lower_bound [4]
#upper_bound [20]
#list_of_integers.push (lower_bound)
#list_of_integers.push (upper_bound)
#list_of_integers.sort
#
#

