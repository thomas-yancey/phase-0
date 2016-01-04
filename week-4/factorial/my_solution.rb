# Factorial

# I worked on this challenge with David Valencia


# Your Solution Below
=begin
def factorial(number)
  return 1 if number == 0
  total = number
  while number > 1
    number -= 1
    total = total * number
  end
  total
end
=end

#refactored

def factorial(number)
  return 1 if number == 0
  (1..number).to_a.reduce(:*)
end
