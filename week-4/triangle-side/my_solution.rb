# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  return false if (a + b) <= c
  return false if (a + c) <= b
  return false if (b + c) <= a
  true
end