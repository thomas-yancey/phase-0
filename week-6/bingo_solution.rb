# # A Nested Array to Model a Bingo Board SOLO CHALLENGE

# # I spent [1.5] hours on this challenge.


# # Release 0: Pseudocode
# # Outline:

# # Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#   # create an array containing b i n g o
#   # use rand to randomly select an index within that array
#   # use rand to select a number 1 through 100

# # Check the called column for the number called.
#   # seperate the letter from the number
#   # Iterate through each array checking the index that corresponds with the letter

# # If the number is in the column, replace with an 'x'
#   #if the number is anywhere in the checked column, replace it with an x

# # Display a column to the console
#   # iterate through each array and display each element at the corresponding
#   # index of the letter called

# # Display the board to the console (prettily)
#   # add padding to each element to make the spacing correct
#   # add a | before and after each element

# # Initial Solution

# class BingoBoard

#   attr_reader :bingo_letters

#   def initialize(board)
#     @@counter = 0
#     @bingo_board = board
#     @bingo_letters = ["B","I","N","G","O"]
#   end

#   def generate_bingo_selection
#     letter = @bingo_letters[rand(0..4)]
#     number = rand(1..100)
#     "#{letter}#{number}"
#   end

#   def check_if_selection_on_board(selection)
#     answer_arr = selection.split("")
#     letter, number = answer_arr.shift, answer_arr.join.to_i
#     column = @bingo_letters.index(letter)

#     @bingo_board.each do |row|
#       if row[column] == number
#         row[column] = "X"
#         return true
#       end
#     end
#   end

#   def print_board

#     p "|B |I |N |G |O |"

#     @bingo_board.each do |row|
#       row_str = ""
#       row.each {|num| row_str << "|" + num.to_s.center(2) }
#       p row_str + "|"
#     end
#   end

#   def won?
#     right_to_left = []
#     left_to_right = []

#     left = 0
#     right = 4
#     @bingo_board.each do |row|
#       return true if row[0] == "X" && row.uniq.size == 1
#       right_to_left << row[left]
#       left_to_right << row[right]
#       left += 1
#       right -= 1
#     end
#     return true if right_to_left[0] == "X" && right_to_left.uniq.size == 1
#     return true if left_to_right[0] == "X" && left_to_right.uniq.size == 1
#     false
#   end


#   def play_game
#     bingo = false
#     until bingo
#       current_selection = generate_bingo_selection
#       starting_count = @@counter
#       puts "The next number is #{current_selection}"
#       puts


#       if check_if_selection_on_board(current_selection) == true
#         puts "You have #{current_selection}"
#         print_board
#         bingo = true if won?
#         sleep(0.2)
#       else
#         puts "You do not have #{current_selection}"
#       end
#     end
#     puts "YOU HAVE BINGO!"
#   end
# end



# Refactored Solution

class BingoBoard

  attr_reader :bingo_letters
  attr_accessor :selection

  def initialize(board)
    @bingo_board = board
    @bingo_letters = ["B","I","N","G","O"]
  end

  def generate_bingo_selection
    @selection = "#{@bingo_letters[rand(0..4)]}#{rand(1..100)}"
  end

  def check_if_selection_on_board
    raise ArgumentError.new("No bingo selection generated yet") if @selection.nil?
    answer_arr = @selection.split("")
    letter, number = answer_arr.shift, answer_arr.join.to_i
    column = @bingo_letters.index(letter)

    @bingo_board.each do |row|
      if row[column] == number
        row[column] = "X"
        return true
      end
    end

    false

  end

  def print_board

    puts "|B |I |N |G |O |"

    @bingo_board.each do |row|
      row_str = ""
      row.each {|num| row_str << "|" + num.to_s.center(2) }
      puts row_str + "|"
    end
  end

  def zigzag_or_horizontal_win
    right_to_left = []
    left_to_right = []

    left = 0
    right = 4
    @bingo_board.each do |row|
      return true if row.uniq.join("") == "X"
      right_to_left << row[left]
      left_to_right << row[right]
      left += 1
      right -= 1
    end
    return true if right_to_left.uniq.join("") == "X"
    return true if left_to_right.uniq.join("") == "X"
    false
  end

  def vertical_win
    column = 0
    until column >= 5
      column_arr = []
      @bingo_board.each do |row|
        column_arr << row[column]
      end
      column += 1
      return true if column_arr.uniq.join("") == "X"
    end

    false
  end

  def won?
    zigzag_or_horizontal_win || vertical_win
  end


  def play_game
    bingo = false
    until bingo
      generate_bingo_selection
      puts "The next number is #{@selection}\n"

      if check_if_selection_on_board
        puts "You have #{@selection}"
        print_board
        bingo = true if won?
        sleep(0.2)
      else
        puts "You do not have #{@selection}"
      end
      puts
    end

    puts "YOU HAVE BINGO!"
  end
end

def true_board_generator
  board = []
  5.times {board << [] }
  start_count = 1
  idx = 0

  until idx >= board.size
    board.each {|row| row[idx] = rand(start_count..(start_count + 14)) }
    start_count += 14
    idx += 1
  end

  board

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

game = BingoBoard.new(true_board_generator)
game.print_board
game.play_game

new_game = BingoBoard.new(board)
p new_game.check_if_selection_on_board
new_game.play_game


#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  # My pseudocoding was a little weak this time through, sometimes I have an easier time diving
  # right in and that opens my eyes to what I need to get done for the intend return value

# What are the benefits of using a class for this challenge?
  # It's nice in that you do not always need to pass things in as arguments. Also the fact that
  # you can create multiple different bingo games with multiple different states quickly is a
  # huge plus as well

# How can you access coordinates in a nested array?
  # You can access elements in a nested array by iterating through both. if you know it is always
  # two levels deep it is not too difficult

# What methods did you use to access and modify the array?
  # Actually did not use anything to fancy, just used each to iterate through and if it was a match
  # I changed it to an "X"

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see
# in the docs, what purpose does it serve, and how is it called?
  # the shift method was useful in removing the first element and also using it for assignment,
  # I implemented it on line 134

# How did you determine what should be an instance variable versus a local variable?
  # basically it came down to whether or not it was neccessary for other methods, the only other instance
  # variable I created was the bingo_letters array because I was going to need to access that twice

# What do you feel is most improved in your refactored solution?
  # I decided to switch the generate_bingo_selection to a one liner, I also made @selection an instance
  # variable so I did not have to call it in a method. I did go ahead and make a solver or player for
  # this game that I was able to refactor a bit, still a tad messy but I think it is readable.


