# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# class GuessingGame

#   def initialize(answer)
#     @answer = answer
#     @solved = false
#   end

#   def solved?
#     @solved
#   end

#   def guess(player_guess)
#     player_guess == @answer ? @solved = true : @solved = false
#     return :correct if player_guess == @answer
#     return :low if player_guess < @answer
#     return :high if player_guess > @answer
#   end
# end


# Refactored Solution
class GuessingGame

  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def solved?
    @solved
  end

  def guess(player_guess)
    player_guess == @answer ? @solved = true : @solved = false
    return :correct if player_guess == @answer
    return :low if player_guess < @answer
    :high
  end
end





# Reflection

# How do instance variables and methods represent the characteristics
# and behaviors (actions) of a real-world object?
  # They represent attributes related to individual items of the same type,
  # In this example you could say there could be multiple guessing games
  # with multiple states of solved? or answers or guesses.

# When should you use instance variables? What do they do for you?
  # They allow you to give attributes to similar items, they should be used
  # to represent attributes of a class, that belong specifically to that item.

# Explain how to use flow control. Did you have any trouble using it
# in this challenge? If so, what did you struggle with?
  # Flow control is useful in controlling what is returned, for instance in my
  # method guess, it goes through each return until one matches, and returns high
  # if it gets through both :correct and :low without a match.

# Why do you think this code requires you to return symbols? What are
# the benefits of using symbols?
  # returning symbols allows for saving memory, also it represents something a little
  # more definitive than a string

