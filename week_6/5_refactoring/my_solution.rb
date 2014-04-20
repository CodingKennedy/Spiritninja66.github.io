# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself].


# Original Solution

class CreditCard
  def initialize(numbers)
    raise ArgumentError.new("Error") if numbers.to_s.length!=16
    @numbers = numbers
end

  def check_card
  	card = @numbers.inspect.split('')
  	x = 0
  	while x < 16
  		card[x]= card[x].to_i * 2
  		x += 2
  end
  card=card.join.split('')
  total= card.map{|x| x.to_i}.inject(:+)
  if total % 10 == 0
  	return true
  else
  	return false
  end
 end
end






# DRIVER TESTS GO BELOW THIS LINE
def assert 
	raise "Failied" unless yield
 end

 assert { new_card = CreditCard.new(4408041234567892)
         new_card.check_card == false} 

assert { good_card = CreditCard.new(4408041234567893)
         good_card.check_card == true}





# Reflection 
# I feel driver code and assert statements are easy but need a little more explaining. I know what they are supposed to do
# but I feel the examples we are shown are very basic and don't really show much on how to use them. I worry that I may be messing
# up in both important steps when I am coding. In some previous excercises, I spent so much time on the actual code that I didn't have time to write
# the driver for it because it seemed like a challenge all on its own.