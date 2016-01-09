
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# Create array of items in the string split by the space
# Create a hash of items in the array with key = item, value = 1
  # set default quantity = 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: add the item to the hash, if no quantity is given set the default value to 1, otherwise set the
#value to the given quantity if the key does not exist, or add the quantity to the existing key value
# output: updated hash

# Method to remove an item from the list
# input: item name and optional quantity to be removed
# steps: if no quantity is given, remove item from list, otherwise set the value to current
# quanity - quantity given.
# output: updated hash

# Method to update the quantity of an item
# input: item name and quantity
# steps: set the value to whatever quantity is given for the item name
# output: updated hash

# Method to print a list and make it look pretty
# input: hash
# steps: iterate through hash and puts string "(item):(number)"
# output: string of items and quanities on individual lines

grocery_hash = {}

def make_list(list, string_of_items)
  string_of_items.split(" ").each do |item|
    list[item].nil? ? list[item] = 1 : list[item] += 1
  end
  list
end

string = "carrots apples cereal pizza"

puts make_list(grocery_hash,string)

def add_item(list, item, quantity = 1)
  list[item].nil? ? list[item] = quantity : list[item] += quantity
  list
end

puts add_item(grocery_hash, "tomato", 4)

def remove_item(list, item, quantity=nil)
  if quantity.nil?
    list.delete(item)
  elsif (list[item] - quantity) <= 0
    list.delete(item)  
  else 
    list[item] -= quantity
  end
  list
end

puts remove_item(grocery_hash, "tomato", 4)

def update_list(list, item, quantity)
  quantity == 0 ? remove_item(list, item) : list[item] = quantity
  list
end

puts update_list(grocery_hash, "cereal", 0)

def print_list(list)
  puts "Grocery List"
  list.each {|item,value| puts "#{item}: #{value}" }
end

print_list(grocery_hash)

new_hash = {}

add_item(new_hash, "Lemonade", 2)
add_item(new_hash, "Tomatoes", 3)
add_item(new_hash, "Onions", 1)
puts add_item(new_hash, "Ice Cream", 4)

puts remove_item(new_hash,"Lemonade")
update_list(new_hash,"Ice Cream", 1)
print_list(new_hash)

=begin
What did you learn about pseudocode from working on this challenge?
  Pseudocode was useful going through all of the different methods we were going to make beforehand to decide
  how each would interact with another.
What are the tradeoffs of using Arrays and Hashes for this challenge?
  Hashes was our choice and I think the better option when you take into account the requirement for quantity.
  You probably could get away with having an array and just duplicate items but that would not represent a
  proper grocery list in my opinion. Using a hash to count inventory is a strong feature.
What does a method return?
  A method returns the final item called in the method or whatever you explicitly tell it to return.
What kind of things can you pass into methods as arguments?
  close to anything you can think of. Pretty much any object can be called in as arquments. Arrays, hashes,
  strings, floats, integers and booleans to name a few./
How can you pass information between methods?
  You can pass information by calling methods on the same objects. We implemented this by having the list be
  a required argument for each of the methods.
What concepts were solidified in this challenge, and what concepts are still confusing?
  I am becoming more comfortable working with hashes. My go to has always been arrays but I need to continue
  to get better and more confident with hashes.



=end
