/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1,
                 Mary: 1,
                 Cindy: 1,
              },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Dan Andersen:
// This challenge took us 2 hours.

// Pseudocode
/*
Tests 1-8: Bob needs to receive three votes for President.
ITERATE through the "var votes" list (outermost hash).
  FOR each students' votes, increment the value of the hash belonging to the candidate. If the candidate does not have a key, one must be created. If the candidate does have a key for that office already, the value associated with that key must be incremented by 1 in the voteCount object.

After all votes have been tallied in voteCount,

ITERATE through voteCount and locate the candidate who recieved the most votes for ech office and send them to the property for that office in "var officers".

*/

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}


var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// __________________________________________
// Initial Solution

// function voteCounter(office) {
//   for (var voter in votes) {
//     var candidate = (votes[voter][office]);
//     if(voteCount[office].hasOwnProperty(candidate)){
//       voteCount[office][candidate] += 1;
//     }
//     else {
//       voteCount[office][candidate] = 1;
//     }
//   }
// }

// function winner(name) {
//   for (var office in voteCount) {
//    var currentWinner = 0;
//     for (var candidate in voteCount[office]) {
//       if (voteCount[office][candidate] > currentWinner){
//       currentWinner = voteCount[office][candidate];
//       officers[office] = candidate;
//       }
//     };
//   };
// }

// voteCounter("president")
// voteCounter("vicePresident")
// voteCounter("secretary")
// voteCounter("treasurer")

// winner()

// console.log(voteCount)
// console.log(officers)



// __________________________________________
// Refactored Solution

function tally(office) {
  for (var voter in votes) {
    var candidate = (votes[voter][office]);
    if(voteCount[office].hasOwnProperty(candidate)){
      voteCount[office][candidate] += 1;
    }
    else {
      voteCount[office][candidate] = 1;
    };
  };
};

function winner(name) {
  for (var office in voteCount) {
    var currentWinner = 0;
    for (var candidate in voteCount[office]) {
      if (voteCount[office][candidate] > currentWinner){
      currentWinner = voteCount[office][candidate];
      officers[office] = candidate;
      };
    };
  };
};

tally("president")
tally("vicePresident")
tally("secretary")
tally("treasurer")
winner()
console.log(voteCount)
console.log(officers)






// __________________________________________
// Reflection
/*

What did you learn about iterating over nested objects in JavaScript?
I learned more about "for....in..", and it was a useful tool for iterating over the properties in the objects we were given.
Were you able to find useful methods to help you with this?
Yes, the method "hasOwnProperty" pretty much helped us figure out how to work out the first portion of this assignment. We were stuck until we finally figured out that we had to use it.
What concepts were solidified in the process of working through this challenge?
The concept of giving objects new properties as well as the concept of iteration became more clear in this challenge.



*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)