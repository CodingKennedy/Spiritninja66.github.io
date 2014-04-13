# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself ].

# 2. Pseudocode

# Create class called die.
# initialize sides.
# if sides are less than one raise ArgumentError.
# else sides are equal to sides.
# define sides.
# define roll to be random 1 to sides.



# 3. Initial Solution
class Die
  def initialize(sides)
    if sides <1 
      raise ArgumentError.new("Error")
    else
      @sides = sides
    end
  end
  
  def sides
    @sides
  end
  
  def roll
     rand(1..@sides)
  end
 
 
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
# This project seemed pretty easy but it was a little difficult figuring out what to randomize. defining the error message was simple from the 
# rspec code. sides were simple to write a method for. I am having trouble thinking how to refactor the code. I am debating if there is another 
# way to have sides and roll. I think I should be able to write methods for them within the initialize method.