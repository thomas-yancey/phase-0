#Attr Methods

# I worked on this challenge by myself

# I spent [.5] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

  attr_reader :name

  def initialize
    @name = "Thomas"
  end

end

class Greetings

  def initialize
    @person = NameData.new
  end

  def hello
    "Hello #{@person.name}, How wonderful to see you today"
  end
end

puts Greetings.new.hello

# Reflection
# What is a reader method?
 # A reader method is one in which you can read the given class variable
# What is a writer method?
 # One in which you can set the a given class variable
# What do the attr methods do for you?
 # They allow you to quickly write reader and writer methods
# Should you always use an accessor to cover your bases? Why or why not?
 # depends on the situation, if you want only the ability to read instead of
 # write for security purposes for instance, you may chose to let the program
 # only read the variable back to the console instead of write access as well.
# What is confusing to you about these methods?
 # I think if you start using many classes inside of each other you can easily get
 # lost on what your variables can and cannot do.
