# Smallest Integer

# I worked on this challenge by myself

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

def smallest_integer(list_of_nums)
  return nil if list_of_nums.empty?
  smallest = list_of_nums.pop
  list_of_nums.each {|x| smallest = x if x < smallest }
  smallest
end

=begin
to use a built in ruby method you could use the following

def smallest_integer(list_of_nums)
  list_of_nums.empty? ? nil : list_of_nums.min
end
=end