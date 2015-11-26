//PSEUDOCODE
/*
//input:grocery items
//output:grocery list
//steps:
CREATE an empty object called grocery list
ADD the grocery items to the object by making them properties
REMOVE a specific item from the list you've already created
UPDATE the quantities of your items by selecting the list and giving it a new quantity for that item
PRINT the list that you created
*/
//INITIAL SOLUTION
// var List = function () {

//   this.groceryList = {}

//   this.addItem = function(item,quantity) {
//     this.groceryList[item]= quantity
//   }

//   this.removeItem = function(item){
//     delete this.groceryList[item]
//   }
//   this.updateQuantity = function (item,newQuantity) {
//     this.groceryList[item] = newQuantity
//   }
// }

// var myList = new List

// myList.addItem("eggs", 2)
// myList.addItem("bacon", 4)
// myList.addItem("beans", 3)
// console.log(myList.groceryList)
// myList.removeItem("bacon")
// console.log(myList.groceryList)
// myList.updateQuantity("beans", 6)
// console.log(myList.groceryList)

// REFACTORED SOLUTION
var List = function () {
  this.groceryList = {}
};
List.prototype.addItem = function(item,quantity) {
    this.groceryList[item]= quantity
  };
List.prototype.removeItem = function(item){
    delete this.groceryList[item]
  };
List.prototype.updateQuantity = function (item,newQuantity) {
    this.groceryList[item] = newQuantity
  };

var myList = new List

myList.addItem("eggs", 2)
myList.addItem("bacon", 4)
myList.addItem("beans", 3)
console.log(myList.groceryList)
myList.removeItem("bacon")
console.log(myList.groceryList)
myList.updateQuantity("beans", 6)
console.log(myList.groceryList)

//REFLECTION
/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
At first I sort of had a hard time understanding what constructor functions were used for, but in this challenge I took the time to understand them and try to make them once more so that my code is better.  I also learned about using prototype so that when my computer loads the program I created, it doesn't take so long to load it. It depends on what methods I call for
What was the most difficult part of this challenge?
It wasn't too difficult. I think the hardest part was writing pseudocode, like always. I knew what I had to do but I alwasy have a hard time putting in words.
Did an array or object make more sense to use and why?
I used an object because it make more sense to make each item in the list a property of that object called list.
*/




