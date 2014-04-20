# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself].


# 2. Pseudocode
#change board and boggle_board to @dice_grid


# 3. Initial Solution
class BoggleBoard
 def initialize(dice_grid)
 	@dice_grid=dice_grid
 end

 def create_word(*coords)
    coords.map { |coord| @dice_grid[coord.first][coord.last]}.join("")
    end
 def get_row(row)
    @dice_grid[row]
    end
 def get_col(col)
    col_array =[]
    @dice_grid.each do |row|
      col_array << row[col]
    end
    col_array
   end
 end

 dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 boggle_board = BoggleBoard.new(dice_grid)



 

 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
puts boggle_board.create_word([1,3], [0,1], [0,2], [1,2], [0,3])  #=> returns "trade"
puts boggle_board.create_word([1,3], [1,0], [2,1], [3,2])  #=> returns "tick"
 
p boggle_board.get_row(1) #=>  ["i", "o", "d", "t"]
p boggle_board.get_row(0) #=>  ["b", "r", "a", "e"]
p boggle_board.get_row(2) #=>  ["e", "c", "l", "r"]
p boggle_board.get_row(3) #=>  ["t", "a", "k", "e"]
 
p boggle_board.get_col(1)  #=>  ["r", "o", "c", "a"]
p boggle_board.get_col(0)  #=>  ["b", "i", "e", "t"]
p boggle_board.get_col(2)  #=>  ["a", "d", "l", "k"]

# 5. Reflection 
# This excercise was fairly simple. I had to alter some of my original code from last week that seemed repetative and useless. 
# I am still lost on the diagonal part of this. I need to do more research. For the most part, I am happy with my code and it 
# 	does work the way I intended it to.