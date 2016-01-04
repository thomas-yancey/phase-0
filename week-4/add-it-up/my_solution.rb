
# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum of those numbers
# Steps to solve the problem.
# initiliaze a total
# iterate through the array
# through each iteration add the element in the array to the total
# return the total

# 1. total initial solution
#def total(arr)
#  counter = 0
#  arr.each do |num|
#    counter += num
#  end
#  counter
#end
# 3. total refactored solution
def total(arr)
  arr.reduce(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of words
# Output: words put together as string with first capitalized and end with a period
# Steps to solve the problem.
#
#
#

# 5. sentence_maker initial solution
=begin
  def sentence_maker(arr)
    str = ""
    x = "#{arr.shift.capitalize} "
    y = "#{arr.pop}."
    str << x
    arr.each {|z| str << "#{z} " }
    str << y
    str
  end
=end

# 6. sentence_maker refactored solution
  def sentence_maker(arr)
    arr.join(" ").capitalize << "."
  end
