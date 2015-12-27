
# Leap Years

# I worked on this challenge with: Joe Case


# Your Solution Below

def leap_year?(year)
  return true if year % 400 == 0
  return false if year % 4 != 0 || year % 100 == 0
  true
end