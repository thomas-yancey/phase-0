# Your Names
# 1)Thomas Yancey
# 2)

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.



# 1. Readability (aka renaming variables)
# 2. Logic & Redundancy (Keeping your code D.R.Y.)



# create serving_size_calc method which takes two arguments, item_to_make and num_of_ingredents
def recipe_counter(item_to_make, available_ingredients)
  # Initialize the library hash of items we are making and the quantities neccesary to make them as the value
  # set error_counter to 3

  bakery_items = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # error_counter = 3


  # my_hash.keys => ["apples", "banana"]
  # my_hash.keys.include?
  # my_hash.include?

  unless bakery_items.include? item_to_make
     raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # SETS SERVING SIZE EQUAL TO THE VALUE OF THE ITEM
  ingredients_needed = bakery_items[item_to_make]
  #SETS REMAINING INGREDIENTS TO WHATS LEFTOVER THAT DOESN'T MAKE A WHOLE OF THE ITEM
  remaining_ingredients = available_ingredients % ingredients_needed


  # IF THERE IS A REMAINDER IT RETURNS THE COUNT OF MADE ITEMS AND SUGGESTS A NEW FEATURE
  # IF THE REMAINDER IS ZERO IT JUST RETURNS THE ITEM MADE AND THE COUNT

  return_string = "Calculations complete: Make #{available_ingredients / ingredients_needed} of #{item_to_make}."

  unless remaining_ingredients == 0
    suggested_items = ""
    count_of_cakes = 0
    count_of_cookies = 0
    until remaining_ingredients >= 5
      count_of_cakes += 1
      remaining_ingredients -= 5
    end
    if count_of_cakes > 0
    end
  end

#   results_hash
#   suggested_baking_items = {}

#   bakery_items.each do |food, ingredients_needed|
#     suggested_baking_items[food] = 0
#     # Logic here to see if we can make any of the current food.
#   end

#   suggested_baking_items.each do |item|
#     if item.qty > 0
#       return_string += "2 cakes"
#     end
#   end

  end

      # If there are enough ingredients to make a pie
      # make pies, subtract from ingredients
      # If there are enough to make at least 1 cake
      # make cakes, subtract ingredients
      # same thing with cookies....

    else
      suggested_item = "#{remaining_ingredients} cookies"
    end
    return_string += " You have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{suggested_item}"
  end

  return return_string


  # if remaining_ingredients
  #   return "Calculations complete: Make #{available_ingredients / ingredients_needed} of #{item_to_make}"
  # else
  #   return "Calculations complete: Make #{available_ingredients / ingredients_needed} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  # end
end


# DRIVER CODE:

p recipe_counter("pie", 7)
p recipe_counter("pie", 13)
p recipe_counter("cake", 5)
p recipe_counter("cake", 7)
p recipe_counter("cookie", 1)
p recipe_counter("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
# What did you learn about making code readable by working on this challenge?
 # Naming variables appropriately is just as important as refactoring itself
# Did you learn any new methods? What did you learn about them?
 # Nothing specifically but got more comfortable with hashes
# What did you learn about accessing data in hashes?
 # That it can be straightforward and very powerful
# What concepts were solidified when working through this challenge?
 # my confidence in hashes
