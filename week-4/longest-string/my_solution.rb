
# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil"

# Your Solution Below
def longest_string(list_of_words)

  return nil if list_of_words.empty?
  max_num = 0
  max_word = ""

  list_of_words.each do |word|
    if word.length > max_num
      max_num, max_word = word.length, word
    end
  end

  max_word
end