# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: the labels we are going to use for the sides of the die
# Output: be able to call the amount of sides on itself also a roll showing
# a randomly selected side
# # Steps:
#  1. set instance variable of labels to the input
#  2. have sides return the count of labels
#  3. have roll return rand between 1 and the number of sides, then select
#  the side as an index of the labels.


# Initial Solution

# class Die
#   def initialize(labels)
#     raise ArgumentError.new("No labels given") if labels.empty?
#     @labels = labels
#   end

#   def sides
#     @labels.size
#   end

#   def roll
#     @labels[rand(0..sides - 1)]
#   end
# end



# Refactored Solution
class Die
  def initialize(labels)
    raise ArgumentError.new("No labels given") if labels.empty?
    @labels = labels
  end

  def sides ; @labels.size ;end

  def roll ; @labels[rand(0..sides - 1)] ; end

end

# Reflection
# What were the main differences between this die class and the last one you
  # Mostly just the implementation of rand as an index rather than the return value
# created in terms of implementation? Did you need to change much logic to get
# this to work?
  #No not at all, only difference was rand to index
# What does this exercise teach you about making code that is easily changeable
# or modifiable?
  #That you can modify existing code quickly to get a lot done
# What new methods did you learn when working on this challenge, if any?
  #No new methods used
# What concepts about classes were you able to solidify in this challenge?
  # instantiating instances of classes