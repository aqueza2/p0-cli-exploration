#PSEUDOCODE
=begin
input: one list of names
output: several lists of names in groups of at least 3.
steps:
1. define method
2. put the list in an array
3.split the list into groups of 5, or 4, or at least 3
4.

=end

#initial solution
# def group (list)
#   default = 5
#   arrays = []
#   array = list.each_slice (default){|i| arrays << i}
#   p arrays

#   if arrays.last.length  >= 3

#     return arrays
#   else
#     other_array = []
#     list.each_slice (default - 1){|i| other_array << i}
#   end

#   if other_array.last.length >= 3
#     return other_array
#   else
#     last_array = []
#     list.each_slice (default - 2){|i| last_array << i}
#     return last_array
#   end

## WORKING SOLUTION -- REFACTORED

def group (list)
  default = 5
  arrays = []
  array = list.each_slice (default){|i| arrays << i}

  counter = 1
  while arrays.last.length < 3
    arrays = []
    element = (default - counter)
    list.each_slice (element){|i| arrays << i}
    counter  = counter + 1
  end
  return arrays


end
p group(["Messi","Neymar","Suarez","Iniesta","Xavi","Alves","Pique","Rakitic","Pedro","Puyol"])
#REFLECTION
=begin
What was the most interesting and most difficult part of this challenge?
The interesting part of this challenge is that there are multiple ways to solve it. I tried it one way in the beginning but later i found a better alternative, so I used the second alternative.
Do you feel you are improving in your ability to write pseudocode and break the problem down?
I think the pseudocode helps me have an idea of what it is that I want to do and how I want to do it, but to me using coderpad and trying different things out in a "live action" way seems to be more useful. I know that I won't always be able to do this, but I do expect my pseudocode writing abilities to et better with time as well.
Was your approach for automating this task a good solution? What could have made it even better?
What data structure did you decide to store the accountability groups in and why?
I used arrays to store the accountability groups. I just thought it would be easier because I would have had to deal with key/value pairing if I used hashes. I just felt more comfortable with arrays.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
My initial solution didn't work, so I took a break and I tried to picture a better way to do this, which is where I thought of using a loop. I struggled to get it to work, so I did very minimal when refactoring because I was scared that if I took something off it wouldn't work.
=end