# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

=begin
# Release 0: Pseudocode
# Outline:

1. Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  a.create a method that picks a random letter from a given array (b,i,n,g,o)
  b.create a method that picks a random number from 1-100
  c.join the two randomly selected elements.
2. Check the called column for the number called.
  a.
  b.
  c.
3. If the number is in the column, replace with an 'x'

4. Display a column to the console
  a.

5. Display the board to the console (prettily)
  #fill in the outline here
=end
# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  def randomize
   p @first_round = @bingo_board.map! {|b|b.take 1}.flatten

  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.randomize

#Reflection
