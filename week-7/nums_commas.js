// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with:Ryan Ho.

// Pseudocode
/*
Input: Integer
Output: Return a comma separated integer as a string

Steps:
1. Define a function expression, giving the function an input (integer)
2. Convert integer into a string
3. Convert string into an array
4. Reverse the array elements
5. Slice the array into elements of 3
6. Insert comma at the end of each group of 3 elements
7. Join each of these group of 3 elements together
8. Return reverse of joined array
*/


// Initial Solution
var separateComma = function(integer) {

  var array = integer.toString().split("").reverse();
  for (var i = 3 ; i < array.length; i+=4) {
    array.splice(i,0,',');
  };
  var finalInteger = array.reverse().join('');
  console.log(finalInteger)
}

separateComma(1234567);


// Refactored Solution
var separateComma = function(integer) {
  var array = integer.toString().split("").reverse();
  for (var i = 3 ; i < array.length; i+=4) {
    array.splice(i,0,',');
  };
  console.log(array.reverse().join(''));
}


// Your Own Tests (OPTIONAL)




// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
It was fun at first to try to use JavaScript with this because we knew how to do it already and it was just like solving a puzzle. Later it was a just a little more frustrating because there are methods that I used in Ruby that do not exist in JS.
What did you learn about iterating over arrays in JavaScript?
I learned that iterating over arrays is almost the same as it is in Ruby. I learned that JS has its own methods that help, but I had to use a loop to iterate.
What was different about solving this problem in JavaScript?
I had to use different methods, but overall it was basically the same thing. Obviously, using functions was the same, but the process of what i wanted to accomplish was basically the same.
What built-in methods did you find to incorporate in your refactored solution?
I didn't find any new methods that could help me refactor. The only thing we refactored was using an extra variable. The code looks pretty dry as far as we could tell.
*/