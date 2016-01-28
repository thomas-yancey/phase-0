#BINGO BOARD 2 SOLUTION

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]

nothing = [[47, 44, 71, 8, 'x'],
           [22, 69, 75, 'x', 73],
           [83, 85, 10, 89, 57],
           [25, 'x', 96, 68, 51],
           ['x', 70, 54, 80, 83]]

class BingoScorer
  def initialize(board)
    @board = board
  end

  def solved?
    vertical_horizontal? || diagonal?
  end

  def vertical_horizontal?
    vertical = []

    (0..@board[0].length).each do |idx|
      vertical_arr = []
      @board.each do |row|
        return true if row.uniq.size == 1 && row[0] == "x"
        vertical_arr << row[idx]
      end
      vertical << vertical_arr
    end
    # checks to see whether any of the vertical arrays are uniq and == "x"
    vertical.each {|row| return true if row.uniq.size == 1 && row[0] == "x"}
    false
  end

  def diagonal?
    leftright, rightleft = [], []
    leftidx, rightidx = 0, @board[0].length - 1
    #puts each vertical idx into array
    @board.each do |row|
      leftright << row[leftidx]
      rightleft << row[rightidx]
      leftidx += 1
      rightidx -= 1
    end

    return true if leftright.uniq.size == 1 && leftright[0] == "x"
    return true if rightleft.uniq.size == 1 && rightleft[0] == "x"
    false
  end

end

horizontal_board = BingoScorer.new(horizontal)
vertical_board = BingoScorer.new(vertical)
rightleft_board = BingoScorer.new(right_to_left)
leftright_board = BingoScorer.new(left_to_right)
nothing_board = BingoScorer.new(nothing)
puts "horizontal bingo board solved: #{horizontal_board.solved?}"
puts "vertical bingo board solved: #{vertical_board.solved?}"
puts "right_to_left bingo board solved: #{rightleft_board.solved?}"
puts "left_to_right bingo board solved: #{leftright_board.solved?}"
puts "nothing bingo board solved: #{nothing_board.solved?}"


# What concepts did you review or learn in this challenge?
#   Getting better with accessing elements in different ways and breaking problems
#   down into subproblems
# What is still confusing to you about Ruby?
#   I feel relatively comfortable at this point, I think the object oriented concept
#   is something I have to work on understanding more
# What are you going to study to get more prepared for Phase 1?
#   As stated above I want to work on the object oriented concepts, also keep
#   working with classes
#