# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# Write two codes that return two seperate words from the boggle board arrays.
# Initial Solution
def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

  p create_word(boggle_board, [3,0], [3,1], [3,2], [3,3])  #=> returns "take"  
  p create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word? rad

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

puts boggle_board[3][0] == "t"   
puts boggle_board[3][1] == "a" 
puts boggle_board[3][2] == "k" 
puts boggle_board[3][3] == "e" 

puts boggle_board[0][1] == "r" 
puts boggle_board[0][2] == "a"
puts boggle_board[1][2] == "d"  

# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# alter code to return a horizontal output from boggle board arrays.
# and then call it
# Initial Solution
def get_row(board, row)
  board[row]
end
 
p get_row(boggle_board, 1)#=> ["i", "o", "d", "t"]



# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts boggle_board[1] == ["i", "o", "d", "t"]   


# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# write a code that will return a vertical column from the boggle board columns. Then call it.
# Initial Solution
def get_col(board, col)
    col_array =[]
    board.each do |row|
      col_array << row[col]
    end
    col_array
end
 
p get_col(boggle_board,1)   #=> ["b","i","e","t"] 





# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

puts boggle_board[0][1] == "r"   # returns boggle_board[row_number][column_number]
puts boggle_board[2][1] == "c" #=> should be true
puts boggle_board[3][3] == "e" #=> should be true
puts boggle_board[2][3] == "x" #=> should be false
#refactored
class Boggle
 
  def initialize
    @boggle_board = [["b", "r", "a", "e"],
                	["i", "o", "d", "t"],
                	["e", "c", "l", "r"],
                	["t", "a", "k", "e"]]
  end
 
  def create_word(*coords)
    coords.map { |coord| @boggle_board[coord.first][coord.last]}.join("") 
  end
 
  def get_row(row)
    @boggle_board[row]
  end
 
  def get_col(col)
    @boggle_board.map {|row| row[col] }
  end
 
end
 
boggle = Boggle.new
# Reflection 

# This was an interesting excercise. I really like how it was broken up into seperate parts to help understand what is supposed to be done.
# I did have to do some research on some methods I wanted to use and I learned about "p" which works similar to puts and print, but it attributes
# 	the output to a string which I found is very useful. some of the code I was working on would have required .to_s but this made it a lot simpler.
# 	For the last section I did find an easier was to call specific parts of the arrays but was having trouble implementing it.
# 	p boggle_board.map{|row| row[1]} would have made that code look a lot neater but I was unable to use it properly. I am a little confused at
# 	how some of the code was broken up. I feel the refactored code should be placed at the bottom. I would then use a class the assemble all of
# 	the codes.