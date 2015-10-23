* What does puts do?
- Puts stands for "put string" and it returns nil and prints the output to the console in a new line. As Chris Pine said, puts simply writes on the screen what comes after it. For example, if I wrote puts 10+10, right after would come the answer, 20, and that's all I would see on the screen (20).
* What is an integer? What is a float?
- An integer is a number without a decimal point. Numbers with decimal points are called floating-point numbers, or floats.
* What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
- When you use division using floats, the program returns the precise answer. When you use division with integers, however, you will get integer answers, meaning that when the computer can't get the precise answer in between two integers, it will always round down. for example, if you divide 9/2, you will get 4 instead of 4.5. If you were to use floats however, the program would print the correct answer, which is 4.5.
* Hours in a year = 8760.
* Minutes in a decade = 5256000  not counting leap years, since there can be either 2 or 3 leap years in a decade.

'''ruby
puts 24 * 365
puts 60 * 24 * 365 * 10
'''

## Reflections
* How does Ruby handle addition, subtraction, multiplication, and division of numbers?
- Ruby behaves like a calculator when adding, subtracting, multiplying, and dividing numbers. When dividing with integers (whole numbers), it rounds down when the answer was supposed to use a decimal. When dividing with floats (numbers with decimals) it gives you a precise answer with decimals. Everything else (addition, multiplication, subtraction) gives you a precise answer regardless of whether you use floats or you use integers.
* What is the difference between integers and floats?
- Integers are whole numbers. Floats are numbers with decimals.
* What is the difference between integer and float division?
- When dividing with integers (whole numbers), ruby rounds down when the answer was supposed to use a decimal. When dividing with floats (numbers with decimals) it gives you a precise answer with decimals.
* What are strings? Why and when would you use them?
- Strings are groups of letters in a program. You would use strings if you want your program to print some words or letters.
* What are local variables? Why and when would you use them?
- Local variables are local to the code construct in which they are declared. For example, a local variable declared in a method or within a loop cannot be accessed outside of that loop or method. Local variable names must begin with either an underscore or a lower case letter. You would use variables to store strings in your computer's memory for later use in your program. This would save you time and would allow you to be more efficient in writing your code.
* How was this challenge? Did you get a good review of some of the basics?
- This challenge was very difficult at first because I had no idea of what I was supposed to do to the code you provided. Then I realized I was supposed to write my answers where it said "Solution Below". Other than that, I didn't think it was extremely challenging. It was all just new to me.