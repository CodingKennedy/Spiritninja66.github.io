# # U2.W5: Bakery Challenge GPS

# # I worked on this challenge with: Timothy

# # pass through the hash. set quantity equal to number of people / value.
# def bakery_num(num_of_people, fav_food)
#     fav_food = {"pie" => 8, "cake" => 6, "cookie" => 1} # my_list is a hash. Numbers tell how much each food feeds.
#     pie_qty = 0 # initializing values
#     cake_qty = 0
#     cookie_qty = 0
  
#     has_fave = false # boolean value for favorite
#     if my_list.has_key?(fav_food)
#     my_list.each_key do |k| #loop checks to see if any inputs are favorite food.
#         if k == fav_food
#             has_fave = true # if inputs are from favorite food, equals true.
#             #fav_food = k 
#         end
#     end
#     if has_fave == false #if value isn't a favorite food, the argument is raised. #redundant?
#         raise ArgumentError.new("You can't make that food")
#     else
#         fav_food_qty = my_list.values_at(fav_food)[0] #Checks the key of favorite food. Sets to value associeted with key.
#         if num_of_people % fav_food_qty == 0 #looking for the remainder of people divided by favorite food quantity. 
#             num_of_food = num_of_people / fav_food_qty #Checks to see if number is equally divisible. Then sets number for what is returned
#             return "You need to make #{num_of_food} #{fav_food}(s)."# tells how much food needs to be made.
#         #else num_of_people % fav_food_qty != 0
#        my_list.each_value do |k| #
#        # while num_of_people > 0 
#             if num_of_people / my_list["pie"] > 0 #
#                 pie_qty = num_of_people / my_list["pie"]
#                 num_of_people = num_of_people % my_list["pie"]
#             elsif num_of_people / my_list["cake"] > 0
#                 cake_qty = num_of_people / my_list["cake"]
#                 num_of_people = num_of_people % my_list["cake"]
#             else
#                 cookie_qty = num_of_people
#                 num_of_people = 0
#             end
#         end
#     return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
#         end
#     end
# end
 






# Our Refactored Solution
def bakery_num(num_of_people, fav_food)
    my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # my_list is a hash. Numbers tell how much each food feeds.
    quantity={"pie" => 0, "cake" => 0, "cookie" => 0}
  
    has_fave = false # boolean value for favorite

    unless my_list.key?(fav_food)
      raise ArgumentError.new("You can't make that food")
    end
    fav_food_qty = my_list.values_at(fav_food)[0] #Checks the key of favorite food. Sets to value associeted with key.
    if num_of_people % fav_food_qty == 0 #looking for the remainder of people divided by favorite food quantity. 
      num_of_food = num_of_people / fav_food_qty #Checks to see if number is equally divisible. Then sets number for what is returned
      return "You need to make #{num_of_food} #{fav_food}(s)."# tells how much food needs to be made.
    else
    	 start = false
      my_list.each do |x, y|
        start = true if x == fav_food
        if start == false
          quantity[x] = 0
      start = false
      my_list.each do |x, y|
        start = true if x == fav_food
        if start == false
          quantity[x] = 0
        else
          quantity[x] = (num_of_people / y)
          num_of_people %= y
        end
      end
    return "You need to make #{quantity["pie"]} pie(s), #{quantity["cake"]} cake(s), and #{quantity["cookie"]} cookie(s)."
    end
  end








#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 
Tim did most of the work on this one as Navigator and I was the driver. A lot of the original code was complicated to follow. 
It was dense and all over the place. I think the messy organization threw me off. Tim helped me break it down and understand it more.
This code was more difficult. I had a difficult time trying to refactor it on my own. There was a lot of repetition which didn't
help much. I understand the idea of the code that we have, but it is still difficult to wrap my mind around it. 



