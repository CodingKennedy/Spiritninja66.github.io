# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# create class Die
# define initalize with the parameters of "labels"
# raise argument error.
# define sides 
# write method for sides using .length.
# define roll.
# set roll equal to labels.


# 3. Initial Solution


class Die
  def initialize(labels)
    @labels = labels
    if @labels.length == 0
      raise ArgumentError.new("error.")
    end
  end

  def sides
    @labels.length
  end

  def roll
     roll= @labels.sample
  end
end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
# This code was very similar to the first die code but it worked with an array of strings instead of numbers. Most of the code is very similar to the first.
# The most diffucult part for me was figuring out how to represent the array. I learned about .sample and it helped make the code very simple.
