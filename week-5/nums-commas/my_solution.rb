# Numbers to Commas Solo Challenge

# I spent .75 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# a number that is not comma seperated

# What is the output? (i.e. What should the code return?)
# a number that is comma seperated

# What are the steps needed to solve the problem?
# return the number as is if it is less than or equal to 3
# If greater than three break the numbers into an array of strings
# Insert a comma at every third from the right element
# until the next third from the right as no longer within # the arrays size
# return the joined array
=begin
# 1. Initial Solution
  def separate_comma(num)
    if num.size <= 3
      return num
    end
    numstr_array = []

    num.to_s.split("").each do |x|
      numstr_array << x
    end

    idx = -4
    until (idx * -1) > numstr_array.size
      numstr_array[idx] = numstr_array[idx] + ","
      idx -= 3
    end
    numstr_array.join
  end
=end

# 2. Refactored Solution

  def separate_comma(number)
    return number if number.size <= 3
    num_str = number.to_s.split("").reverse.map.with_index do |num,idx|
      idx % 3 == 0 && idx != 0 ? num + "," : num
    end
    num_str.reverse.join
  end
# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?
  To be honest I have done this problem before on either codeeval or coderbyte so I already had a
  strong idea of how to approach it. I broke it down by first testing whether the num was big enough
  to be altered. than loop through and insert commas until the next comma exceeded the size of the array.
  I feel like this was a strong approach and was really the only one I considered.
Was your pseudocode effective in helping you build a successful initial solution?
  I think it actually was and pseudocode is something new I have been doing throughout these exercises.
  It definitely helps to lay your steps out before starting and making needed changes as you see them.
What new Ruby method(s) did you use when refactoring your solution? Describe your experience of
using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly
change the way your code works? If so, how?
  I did not implement any new methods in my code. I think I refactored it pretty well but would be interested
  in seeing a more elegant solution with some methods I have not seen.
How did you initially iterate through the data structure?
  At first I looped through the array and only when reading this did I think to use map.with_index.
Do you feel your refactored solution is more readable than your initial solution?
  No, honestly probably should have just refactored my original solution down to less lines
  of code instead of trying to make it too complicated. I think my refactored solution was
  good practice though
=end
