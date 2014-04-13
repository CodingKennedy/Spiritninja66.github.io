# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].

# 2. Pseudocode

# class CreditCard
#   define initalize with parameter numbers
# raise argument errors 
# define check_card. write method to split numbers.
# set x equal to 0.
# x must be less than 16.
# multiply by 2
# add by 2


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
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



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
# This challenge was a lot trickier. I had to look over the luhn algorithm over a bit. It was a little confusing to translate parts of the code or understanding
# the expected output. This has probably been one of the most difficult tasks I worked on this week. The rspec code helped understand where I was going wrong.
# but some of it took a bit of research and reviewing content over again. 
