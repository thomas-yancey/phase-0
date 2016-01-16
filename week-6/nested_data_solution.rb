# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.each do |el|
 if el.kind_of?(Array)
   el.each {|in_el| puts in_el }
 else
   puts el
 end
end



# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# counter = 0
# while counter < startup_names.length
#   if startup_names[counter].kind_of?(Array)
#
#     new_counter = 0
#     while new_counter < startup_names[counter].length # equals?
#       if startup_names[counter][new_counter].kind_of?(Array)
#
#         newest_counter = 0
#         while newest_counter < startup_names[counter][new_counter].length #equals?
#           startup_names[counter][new_counter][newest_counter] += "ly"
#           newest_counter += 1
#         end
#
#       else
#         startup_names[counter][new_counter] += "ly"
#       end
#
#       new_counter += 1
#     end
#
#   else
#     startup_names[counter] += "ly"
#   end
#   counter += 1
# end

# puts startup_names.to_s

# RECURSION!!
# input: nested arrays with strings in them
# output: strings ending in "ly" in their original arrays
# if it's an array, it calls itself
# return everything with "ly" added on the end
def add_ly!(nested_arr)
  idx = 0
  while idx < nested_arr.length
    nested_arr[idx].kind_of?(Array) ? add_ly!(nested_arr[idx]) : nested_arr[idx] += "ly"
    idx += 1
  end
  nested_arr
end

puts add_ly!(startup_names).to_s

# Reflection

# What are some general rules you can apply to nested arrays?
## If you do not care whether or not you keep its original form you can use flatten,
## p will print the array together, puts will do each line at a time.
# What are some ways you can iterate over nested arrays?
## You can do it recursively as shown above, you can use kind_of to check for nested
## arrays and do it conditionally.
# Did you find any good new methods to implement or did you re-use one you were
# already familiar with? What was it and why did you decide that was a good option?
## Not many new methods except kind_of?. My partner decided we should try and do this
## recursively which I thought turned out really well.