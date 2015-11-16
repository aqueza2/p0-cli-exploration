// Mission Description:
// Overall mission: reach the phoenix to get the sword and kill the giant snake
// Goals: reach the pheonix to get the sword, kill the giant snake with the sword, boy wizard and phoenix should avoid the giant snake.
// Characters: Boy Wizard, Phoenix, Giant Snake
// Objects: Boy Wizard (health, sword, magic), Phoenix (health, sword), Giant Snake (health)
// Functions:

//PSEUDOCODE
//
//
//
//
//
//



var boyWizard = {
  health: 100,
  sword: 0,
  magic: 100,
  position: 0,
  move: function() {
  for (var i = 0; i < 100; i += 10) {
   console.log(i);
    }
  }
}

console.log(boyWizard.move())


var phoenix = {
  health: 100,
  sword: 1,
  position: 100
}

var giantSnake = {
  health: 100,
  position: (Math.floor(Math.random() * 100) + 0  )
}

// console.log(Math.floor(Math.random() * 100) + 0  )

// function {

// }

// function {

// }

// function {

// }

