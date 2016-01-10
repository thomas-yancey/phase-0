# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: number of sides on a die
# Output: if you ask it for sides it returns sides, if you roll it it returns a num between 1 and # of sides
# Steps:
  # make sides readable
  # initialize the sides
  # raise an argument error if there are less than 0 sides in the initilization
  # create a method roll that uses rand to return a number between 1 and the number of sides



# 1. Initial Solution
=begin
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
=end


# 3. Refactored Solution

class Die
  attr_reader :sides

  def initialize(sides)
    raise ArgumentError.new("") if sides < 1
    @sides = sides
  end

  def roll
    rand(1..sides)
  end
end

# 4. Reflection

# What is an ArgumentError and why would you use one?
  # an ArgumentError is the error raised by the program in the terminal indicating why the program stopped
  # from trying to execute. You would use one to alert yourself of parameters that are innapropriate for
  # whatever reason.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
  # rand was new, also calling an instance of ArgumentError was new.
# What is a Ruby class?
  # A class is rather difficult to explain. A class is an object in ruby, but more specifically it is a
  # grouping of code related to similar objects. You create classes to quickly create instances of similar data.
  # for example, you could create a class Car. A class of Car could have instance variables such as num_of_wheels, type, num_of_doors and so on.
# Why would you use a Ruby class?
  # You use a ruby class to create reusable code and quickly instantiate objects which can be grouped together.
# What is the difference between a local variable and an instance variable?
  # An instance variable is one specifically related to a class. a local variable is one in which the scope
  # remains within a method. for example
  # class Car
  #   def initialize(type,doors)
  #     @doors = doors
  #     @type = type
  #   end
  #
  #   def rev_engine
  #     sound = "VROOM"
  #     puts sound
  #   end
  # end
  #
  # In the above terrible example, @doors is a instance variable and sound is a local variable.

# Where can an instance variable be used?
  # Inside of a class