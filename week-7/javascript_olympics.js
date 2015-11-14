 // JavaScript Olympics

// I paired [by myself, with: Amaar Fazlani] on this challenge.

// This challenge took me [2] hours.


// Warm Up


// Bulk Up
//pseudocode
//input: array of athlete names and event
//output: a string saying "name of athlete "won" event"
//steps:
//1. create a function called win that accepts one argument
//2. create the variables (athletes) that will be given as arguments to the function
//3. give each variable the name property and the event property
//4. in the function, make it print out each variable name along with "won" and the event property.

var Amaar = {
  name: "Amaar",
  event: "Mens Single"

}
var Alicia = {
  name: "Alicia",
  event: "500 Meter Dash"
}

var olympics = function(athletes) {
  athletes.forEach(function(athletes) {
    console.log(athletes.name + " won the " + athletes.event + "!");
})}

olympics([Amaar, Alicia]);

// Jumble your words


// Pseudocode
// Input: A string
// Ouptut: Reversed string
// Step 1: Convert string into individual elements
// Step 2: Reverse individual elements
// Step 3: Join all the elements into a string

var reverseString = function(string) {
  console.log((string.split("")).reverse().join("").toString())
}

reverseString("Hello")




// 2,4,6,8

//pseudocode
// input: an array of numbers
// output: an array of only even numbers from the input array
// steps:
//1. create a function that takes in one argument
//2. create conditional statement within the function that is true when each element is divisible by two.
//3. if the number is divisible by two print it to the screen.



var evenNumber = function(array) {
array.forEach(function(eachNumber) {
  if(eachNumber % 2 === 0) {
    console.log(eachNumber);

  }})};

evenNumber([1,2,3,4,5,6])


// "We built this city"

// pseudocode
// input: Input a string (name), input a integer (age), input a string (sport name), input a string(famous quote)
// output: One string which includes the name, sport name, and famous quote
// Step 1: create a function c

function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote =  quote;
    };

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
//What JavaScript knowledge did you solidify in this challenge?
// this challenge help me understand how iteration works and how functions work. I feel way more comfortable with javascript because of this challenge.
// What are constructor functions?
// Constructor functions, when used in conjunction with the new keyword, make a new object and initialize the new object. Constructor functions provide a way to define behaviour which is shared by all new objects that are created by that function. This shared behaviour is made possible by the Function.prototype property. Javascript is a classless language, but the prototype property on a function the closest thing to any notion of classes.
// How are constructors different from Ruby classes (in your research)?
//Classes provide a way of creating objects with defined behaviour (methods) via the new method. The important distinction is that in Ruby, "new" is a method of Class, and not a keyword operator as it is in Javascript.