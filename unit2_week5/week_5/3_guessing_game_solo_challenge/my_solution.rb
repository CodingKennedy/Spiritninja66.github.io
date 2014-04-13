# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# define class GuessingGame
# define initalize with parameters of answer.
# write a method for answer.
# define guess with parameters of guess.
# set rules for guess.
# define solved. 


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer=answer
  end
  
  def guess(guess)
    @guess=guess
    if guess > @answer
  return :high
    elsif guess < @answer
  return :low
    else guess == @answer
  return :correct
  end
end
  def solved?
    @guess==@answer
 
end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
# This was similar to the die problems. It was pretty straight forward to write a code for this guessing game. I had to review if elseif and 
# else statements for this. I am getting more confident in my programs but i feel that I have to continuously review and look over
#   topics I should know. 
