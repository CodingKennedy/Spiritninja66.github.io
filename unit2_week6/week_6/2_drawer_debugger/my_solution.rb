# U2.W6: Drawer Debugger


# I worked on this challenge [by myself].


# 2. Original Code

class Drawer

	attr_reader :contents

# Are there any more methods needed in this class? I don't feel more methods are needed here.
	def initialize
		@contents = []
		@open = true
		end

	def open
		@open = true
		end

	def close
		@open = false
		end 

	def add_item(item)
		@contents << item
		end

	def remove_item(item = @contents.pop) #what is `#pop` doing? removes the last item.
		@contents.delete(item)
		end

	def dump  # what should this method return? This will return "This drawer is empty"
		puts "Your drawer is empty."
		end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
		end


class Silverware
	attr_reader :type

# Are there any more methods needed in this class? Yes. more methods are needed here. none of this section is returned when the program runs. 

	def initialize(type, clean = true)
		@type = type
		@clean = clean
		end

	def eat
		puts "eating with the #{type}"
		@clean = false
		end

	end

	knife1 = Silverware.new("knife")

		silverware_drawer = Drawer.new
		silverware_drawer.add_item(knife1) 
		silverware_drawer.add_item(Silverware.new("spoon"))
		silverware_drawer.add_item(Silverware.new("fork")) 
		silverware_drawer.view_contents

		silverware_drawer.remove_item
		silverware_drawer.view_contents
		sharp_knife = Silverware.new("sharp_knife")


		silverware_drawer.add_item(sharp_knife)

		silverware_drawer.view_contents
	def clean_silverware
		removed_knife = silverware_drawer.remove_item(sharp_knife)
		removed_knife.eat
		removed_knife.clean_silverware 

		silverware_drawer.view_contents
		silverware_drawer.dump
		silverware_drawer.view_contents #What should this return? This will return the contents of the drawer


		fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
		fork.eat
		end
	end
#BONUS SECTION
#puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE
name= "knife"
assert{name=="knife"}
assert {name=="spoon"}
assert {name=="fork"}




# 5. Reflection
# this assignment felt pretty straightforward. Keeping clean code is important, especially for debugging. It will help coders
# identify problem areas quicker. Through pass assignemnts I didn't have much time and probably didn't clean up the code as much as 
# I would like it to have been. This assignment gave me some much needed practice in understanding why clean code is important. 
# I feel a bit more confident in my abilities from working on this project 