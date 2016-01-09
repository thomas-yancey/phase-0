# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

class Die

  def initialize(sides)
    raise ArgumentError.new("") if sides < 1
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..sides)
  end
end



# 3. Refactored Solution







# 4. Reflection