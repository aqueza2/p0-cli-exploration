// Mission Description:
// Overall mission: reach the phoenix to get the sword and kill the giant snake
// Goals: reach the pheonix to get the sword, kill the giant snake with the sword, boy wizard and phoenix should avoid the giant snake.
// Characters: Boy Wizard, Phoenix, Giant Snake
// Objects: Boy Wizard (health, sword, magic), Phoenix (health, sword), Giant Snake (health)
// Functions: boy move, snake move, check positions

//PSEUDOCODE
//steps: create three objects: the boy, the snake, the phoenix.
//give each object position properties.
//create a function that makes the boy move, another function that makes the snake move
//create a final function to check if the position between the boy and the snake is the same, and if it is, the game is over.
//check the position of the boy and the phoenix, if it is the same, the boy acquires the sword.
// if the boy acquires the sword, he kills the snake and wins the game.



var boyWizard = {
  health: 100,
  sword: 0,
  position: 0,
  move: function() {
   this.position = this.position +10;
    console.log("the boy wizard is at " + this.position)
  }
}

var phoenix = {
  health: 100,
  sword: 1,
  position: 100
}

var giantSnake = {
  health: 100,
  position:0
}

var snakeSlitherin = function(){
    giantSnake.position = (Math.floor(Math.random() * 100))
    console.log("the giant snake is at " + giantSnake.position)
}

var check = function () {
  if (giantSnake.position == boyWizard.position) {
    return "The forces of evil have won"
  }
  else if (boyWizard.position == phoenix.position){
    boyWizard.sword = 1
    phoenix.sword = 0
    return "the pheonix of fire has given you the magic sword, kill the snake!"
  }
  else if (giantSnake.position == phoenix.position){
    giantSnake.health = 50
    return "the phoenix has blinded the giant snake"
  }
}


console.log(boyWizard.move())
console.log(snakeSlitherin())
console.log(check())
console.log(boyWizard.move())
console.log(snakeSlitherin())
console.log(check())
console.log(boyWizard.move())
console.log(snakeSlitherin())
console.log(check())
console.log(boyWizard.move())
console.log(snakeSlitherin())
console.log(check())
console.log(boyWizard.move())
console.log(snakeSlitherin())
console.log(check())
console.log(boyWizard.move())
console.log(snakeSlitherin())
console.log(check())
console.log(boyWizard.move())
console.log(snakeSlitherin())
console.log(check())
console.log(boyWizard.move())
console.log(snakeSlitherin())
console.log(check())
console.log(boyWizard.move())
console.log(snakeSlitherin())
console.log(check())
console.log(boyWizard.move())
console.log(snakeSlitherin())
console.log(check())


/*
What was the most difficult part of this challenge?
The hardest part of this challenge was deciding what to do in terms of what game to actually try to design. The game I originally came up with was not very suit for my knowledge of JS thus far, so I couldn't do it. i decided to just go with a simple positioning game like the one from the example.
What did you learn about creating objects and functions that interact with one another?
It was definitely fun. I learned that in JS positioning of your variables matters someitmes, and sometimes it doesn't. JS is very picky and sometimes I could not get my code to work over a simple mistake like missing a bracket or a comma.
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
I did not learn any new built in methods. I used the random number generator, and I've only used it two other times. So i got some practice with that. I also was not very successful at refactoring.
How can you access and manipulate properties of objects?
you can access properties of objects by calling them using a "." or you can also use a bracket with quotations inside. I used the "." method more often because it is cleaner.
*/