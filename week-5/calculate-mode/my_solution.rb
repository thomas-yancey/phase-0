# Calculate the mode Pairing Challenge

# I worked on this challenge with Menuka Samaranayake

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# Input = array of numbers
# Output = most frequent number
# Steps
# 1. Create a hash
# 2. Iterate through the array, and each value is becomes hash key. Increment value +1
# 3. Look through hash for highest value to key



# 1. Initial Solution
=begin
def mode(arr)
  num_hash = {}
  arr.each do |x|
    if num_hash.has_key?(x)
      num_hash[x] += 1
    else
      num_hash[x] = 1
    end
  end

  modes = []
  max_value = num_hash.values.max
  num_hash.select {|key, value| modes << key if value == max_value }
  modes
end
=end
# 3. Refactored Solution
def mode(arr)
  num_hash = arr.each_with_object(Hash.new(0)) { |num,hash| hash[num] += 1 }
  Hash[num_hash.select {|k,v| v == num_hash.values.max }].keys
end

# 4. Reflection

=begin
Which data structure did you and your pair decide to implement and why?

we used a hash to map the occurences of each number to their counts. This would allow us to then collect
the keys if they had the max value

Were you more successful breaking this problem down into implementable pseudocode than the last with a
pair?

I think so, my pair took the lead on the pseudocode this time but I understood his approach and
agreed it was the best way to go

What issues/successes did you run into when translating your pseudocode to code?
I wish I had remembered how to default hash values without having to go back and look it up

What methods did you use to iterate through the content? Did you find any good ones when you were
refactoring? Were they difficult to implement?

When refactoring my partner found each_with_object which is great for initializing and then
working with it on the same array. Conceptually right now it is difficult me to fully understand
that method but I think I mostly have it figured out. Plan on doing some practice with it to better
understand.
=end