# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [9] hours on this challenge.

=begin
# Release 0: Pseudocode
# Outline:
1. Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  a.create a method that picks a random letter from a given array (b,i,n,g,o)
  b.create a method that picks a random number from 1-100
  c.join the two randomly selected elements.
2. Check the called column for the number called.
  a. Consider the letter that was randomly generated, and associate it with a given column. For example: B is for the First column, I is for the second column, etc..
  b.Search the column associated with the letter for the number that was randomly generated.
3. If the number is in the column, replace with an 'x'
  a. If the randomly generated number is in the original board, replace it with an X.
4. Display a column to the console
  a. I didn't do this part in my code.
5. Display the board to the console (prettily)
  a. Iterate through the nested arrays and display each one using a method that prints to the screen.
=end
# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letters = ["B","I","N","G","O"]
    @numbers = (1..100)
    @new_board = @bingo_board.transpose
  end

  def call
     @random_letter = @letters.sample
     @random_number = rand(@numbers)

  end

  def check
    call
    if @random_letter == "B" && @new_board[0].include?(@random_number)
        p index = @new_board[0].index(@random_number)
        p @new_board[0][index] = "X"
         puts "wooooooooooooooo finnnaaallyy!!!!"
    elsif @random_letter == "I" && @new_board[1].include?(@random_number)
        p index = @new_board[1].index(@random_number)
        p @new_board[1][index] = "X"
         puts "wooooooooooooooo finnnaaallyy!!!!"

    elsif @random_letter == "N" && @new_board[2].include?(@random_number)
        p index = @new_board[2].index(@random_number)
        p @new_board[2][index] = "X"
         puts "wooooooooooooooo finnnaaallyy!!!!"

    elsif @random_letter == "G" && @new_board[3].include?(@random_number)
       p index = @new_board[3].index(@random_number)
       p  @new_board[3][index] = "X"
       puts "wooooooooooooooo finnnaaallyy!!!!"

    elsif @random_letter == "O" && @new_board[4].include?(@random_number)
        p index = @new_board[4].index(@random_number)
        p @new_board[4][index] = "X"
         puts "wooooooooooooooo finnnaaallyy!!!!"
    else
      "just keep swimming"
    end


  end

  def display_board

    @new_board.transpose.each {|x| p x}

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
100.times do
  new_game.check
  new_game.display_board
end
#Reflection
=begin
1. How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  Pseudocoding was way too hard for this one. It honestly was the part that took me like 4 hours. I didn't know to approach this challenge. It definitely broke my spirits. I don't mind the outline form of pseudocoding because in general I think I try to keep my pseudocode organized like that. I find that it is easier to read.
2. What are the benefits of using a class for this challenge?
The benefits of using a class is that when you initialize it, you can define your variables there and then you can access them accross the different instance methods.
3. How can you access coordinates in a nested array?
You can access coordinates by calling the array and then giving it two values. For example array[0][0] gives access to the first element of the first array in a nested array.
4. What methods did you use to access and modify the array?
I know my code is "the long way" and I know I could have used other methods to iterate over each new array, but I didn't know what to use after I found out about "transpose". To access and modify each array I used index and .include? combined with if statements.
5. Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
I have to be honest, I couldn't figure out how to approach this until I read online about "transpose". Transpose allowed me to group all the values for each letter together in an array. This allowed me to check and associate a letter with all its given values. At first I thought it was going to be impossible, but "transpose" did the magic trick!
6. How did you determine what should be an instance variable versus a local variable?
7. What do you feel is most improved in your refactored solution?
  I didn't bother to refactor, and I know I should have, but I was just happy that I could get a solution at all. Originally, I had my code just keep one X at a time and then start over with a new board the next time a random number and letter were generated. I decided to let the code store the Xs. Maybe in the future this could turn into an actual game, where the user would win once all the spaces were filled with Xs. Also, another reason why I didn't refactor was because I already spent way too much time on this.
=end




