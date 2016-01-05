# Pad an Array

# I worked on this challenge with Sanderfer Chau

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# first an array, then a minimum size of the array we are going to want to 
#transform, default value of nil for the the padding of the array if none is given
# What is the output? (i.e. What should the code return?)
# Return an array either transformed or copied depending on the destructive or non
#destructive one, with the padding of the value given, if none is given nil to pad
#it to the minimum size given
# What are the steps needed to solve the problem?
# If size of the array is greater than or equal to the min_size return that
# If not loop through pushing the value to the end of the array until the size equals min_size

=begin
# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  end
  until min_size <= array.length
    array << value
  end
  array
end

def pad(array, min_size, value = nil)
  new_arr = []
  array.each do |x|
    new_arr << x
  end
  if array.length >= min_size
    new_arr
  end
  until min_size <= new_arr.length
    new_arr << value
  end
  new_arr
end
=end

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  return array if array.length >= min_size
  array << value until min_size <= array.length
  array
end

def pad(array, min_size, value = nil)
  new_array = array.dup
  return new_array if array.length >= min_size
  new_array << value until min_size <= new_array.length
  new_array
end
# 4. Reflection
=begin

Were you successful in breaking the problem down into small steps?
  Yea I think we had a strong approach to this problem and were able to break out all of the parts nicely

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and
successes did you have?
  We were pretty successful off the bat. Mostly we struggled assuming we failed too many tests.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not,
  It was successful for the destructive method even though we didn't notice until reading through the 
  spec and noticing only the first 3 tests related to it. The non-destructive which I originally thought
  would be easier gave us more trouble. I got caught up on setting a new_array = array actually just
  pointed to that array.
what were the errors you encountered and what did you do to resolve them?
  On the non destructive method having a new_array that did not effect the old array. We decided to 
  use the dup method to make a copy. I tried to not use built in methods after the session and had my 
  initial solution iterate through the array adding a new element to a new_array.
When you refactored, did you find any existing methods in Ruby to clean up your code?
  I was unsure whether we could use the length method which was crucial in even our initial solution.
  the dup method comes off as pretty helpful and readable in situations where you want a duplicate not
  pointing to the original.
How readable is your solution? Did you and your pair choose descriptive variable names?
  I think it is pretty readable especially in its refactored form. we used new_array which I think clearly
  lets you know you are working with a different array.
What is the difference between destructive and non-destructive methods in your own words?
  Destructive methods will change in array in place and therefore alter it forever. Non destructive methods
  will return you a copy of that array with the changes you wanted to make while keeping your original array
  that was an argument unaltered.
=end
