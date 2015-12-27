# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  return nil if list_of_nums.empty?
  largest = list_of_nums.pop
  list_of_nums.each {|x| largest = x if x > largest }
  largest
end

=begin
#using rubys built in method max

def largest_integer(list_of_nums)
  list_of_nums.empty? ? nil : list_of_nums.max
end
=end

