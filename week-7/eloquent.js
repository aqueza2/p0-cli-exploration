// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var variable  = (10*3)
console.log(variable)
////
prompt("What is your favorite food?")
console.log("Hey! That's my favorite too!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//FizzBuzz
for (var i = 0; i < 100; i++) {
  if ((i % 5 == 0) && (i % 3 == 0)){
    console.log("FizzBuzz")
  }
  else if (i % 3 == 0){
    console.log("Fizz")
  }
  else if (i % 5 == 0){
    console.log("Buzz")
  }
  else {
    console.log(i)
  }
};
// Functions

// Complete the `minimum` exercise.
function min(number1, number2) {
  console.log(Math.min(number1,number2))
};


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me {
name: "Alicia"
age: "22"
favfood1: "Tacos"
favfood2: "Tamales"
favfood3: "Tortas"
quirk: "I triple check everything before I go to sleep"
}