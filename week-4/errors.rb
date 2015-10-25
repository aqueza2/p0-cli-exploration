# Analyze the Errors

# I worked on this challenge [by myself ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# It is "errors.rb"
# 2. What is the line number where the error occurs?
# It says the error occurs in line 170.
# 3. What is the type of error message?
# It is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# It was expecting a keyword "end" at the end of our code.
# 5. Where is the error in the code?
# The error is that there should be another "end" in line 17. It says line 170, but we don't have to close our code all the way over there. We can just write "end" on line 17.
# 6. Why did the interpreter give you this error?
# The interpreter gave me this error because the method in line 13 is not properly closed. It states line 170 (I'm guessing) because it wants me to close it.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# Line 36.
# 2. What is the type of error message?
#It just says the error is in '<main>', and that it is a name error.
# 3. What additional information does the interpreter provide about this type of error?
#It tells me that what is on line 36 is an undefined local variable or method.
# 4. Where is the error in the code?
#It is in line 36, where we do not define what "south_park" is.
# 5. Why did the interpreter give you this error?
#It gave me this error because it doesn't know what "south_park" means. It needs to be defined with a . and then something after it if it is going to be an object, or it needs to be defined as a method.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
# Line 51
# 2. What is the type of error message?
#it is a no method error in 'main'.
# 3. What additional information does the interpreter provide about this type of error?
#It tells me that the method "cartman" is not defined.
# 4. Where is the error in the code?
# It is before the word "cartman" and after it.It is missing 'def' before cartman and it is missing 'end' to close the method
# 5. Why did the interpreter give you this error?
# It gave me this error because the method "cartman" has not been properly defined and closed.

# --- error -------------------------------------------------------

def cartmans_phrase(argument)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# Line 67.
# 2. What is the type of error message?
# It is an argument error.
# 3. What additional information does the interpreter provide about this type of error?
# It tells me that it took the wrong number of arguments. It gave an argument, but the method is not accepting arguments.
# 4. Where is the error in the code?
# The error is after the method in line 67, there is no space for arguments.
# 5. Why did the interpreter give you this error?
# It gave me this error because I need to allow the method to take an input by adding () right after it is defined.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says ('I\'m not fat; I\'m big boned!')

# 1. What is the line number where the error occurs?
# It is line 86.
# 2. What is the type of error message?
# The error is an argument error
# 3. What additional information does the interpreter provide about this type of error?
#It tells me that it received 0 arguments, when it should be getting 1.
# 4. Where is the error in the code?
# the error is after the method (when calling it). It needs to have an argument in order for the method to give an output.
# 5. Why did the interpreter give you this error?
# It gave me this error because I need to give the method an input when I call it in order for there to be an output. So far there was no input, thats why we got an error.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!','Kyle')

# 1. What is the line number where the error occurs?
# Line 107.
# 2. What is the type of error message?
#This is an argument error.
# 3. What additional information does the interpreter provide about this type of error?
#It tells me that it was expecting 2 arguments, and it only received one.
# 4. Where is the error in the code?
# The error is in line 111 inside the parentheses. It is missing another argument.
# 5. Why did the interpreter give you this error?
# It gave me this error because a second argument needs to be added to the input when I call the method, since the method was originally defined as able to take two arguments.
# --- error -------------------------------------------------------

p "Respect my authoritay! " * 5

# 1. What is the line number where the error occurs?
# Line 125
# 2. What is the type of error message?
# The error is a type error.
# 3. What additional information does the interpreter provide about this type of error?
#It tells me that the string can't be coerced into a fixed number.
# 4. Where is the error in the code?
# The error is in "x".
# 5. Why did the interpreter give you this error?
#The interpreter gave me this error because a fixed number cannot be multiplied by a string, but a string can be multiplied by a fixed number. If we make these two switch places, the string will be multiplied 5 times and the error will be fixed. I put p so that it would be printed and returned.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# Line 140.
# 2. What is the type of error message?
# It is a zero division error.
# 3. What additional information does the interpreter provide about this type of error?
# It tells me that something is divided by 0.
# 4. Where is the error in the code?
# The error is in line 140 where it says "20/0"
# 5. Why did the interpreter give you this error?
#It gave me this error because dividing by 0 is not something that is possible. Division by zero is undefined, or as my high school precalculus teacher used to say, if you try to divide by zero the whole world explodes.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 156
# 2. What is the type of error message?
# This is a Load error
# 3. What additional information does the interpreter provide about this type of error?
# It tells me that it cannot load such file named cartmans_essay.md.
# 4. Where is the error in the code?
# The error is in "require_relative".
# 5. Why did the interpreter give you this error?
# it gave me this error because this file does not exist in my computer, therefore it cannot be loaded. If I create it, then it will work.

# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#
#Which error was the most difficult to read?
# I didn't think any of the errors were hard to read. I thought this challenge was not that hard overall.
#How did you figure out what the issue with the error was?
# The description section that comes after the location of the error was very helpful because it basically described the error enough where I could understand what was wrong. Sometimes it would tell me what was expected, and what it got instead.
#Were you able to determine why each error message happened based on the code?
#Yes, I was able to figure out all of the errors thanks to the descriptions.
#When you encounter errors in your future code, what process will you follow to help you debug?
#I will definitely look at the location first, and then I will look at the description to see what is wrong with it. I know they will not be this easy to figure out in the future, but I think these basic steps will be very helpful to solve errors in the future.
#
