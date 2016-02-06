# OO Basics: Student

# I worked on this challenge with: Tim Kelly.
# This challenge took me 1.5 hours.

# Initial Solution

=begin

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name,scores_array)
    @first_name = first_name
    @scores = scores_array
  end

  def average
    scores.reduce(:+) / scores.length.to_f
  end

  def letter_grade
    case average
    when 90..100
      return "A"
    when 80..89
      return "B"
    when 70..79
      return "C"
    when 60..69
      return "D"
    else
      return "F"
    end
  end
end

def linear_search(student_array, student_name)
  student_array.each_with_index do |name, index|
    if name.first_name == student_name
      return index
    end
  end
  -1
end

def binary_search(student_array, student_name)
  search_hash = {}
  student_array.each_with_index do |name, index|
    search_hash[name.first_name] = index
  end
  sorted = search_hash.sort

  correct_index = nil

  until correct_index != nil || sorted.empty?
    middle = sorted.length / 2
    if sorted[middle][0] == student_name
      correct_index = sorted[middle][1]
    elsif student_name > sorted[middle][0]
      sorted = sorted.slice(middle+1..-1)
    elsif student_name < sorted[middle][0]
      sorted = sorted.slice(0..middle-1)
    end
  end
  return -1 if sorted.empty?
  correct_index
end

students = []
alex = Student.new("Alex",[100,100,100,0,100])
steve = Student.new("Steve",[10,22,50,89,54])
george = Student.new("George",[30,52,80,19,54])
lindsay = Student.new("Lindsay",[10,32,70,35,54])
rocco = Student.new("Rocco",[10,22,53,39,54])
students.push(alex,steve,george,lindsay,rocco)

=end

# Refactored Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name,scores_array)
    @first_name = first_name
    @scores = scores_array
  end

  def average
    scores.reduce(:+) / scores.length.to_f
  end

  def letter_grade
    case average
    when 90..100
      return "A"
    when 80..89
      return "B"
    when 70..79
      return "C"
    when 60..69
      return "D"
    else
      return "F"
    end
  end
end

def linear_search(student_array, student_name)
  student_array.each_with_index { |student, index| return index if student.first_name == student_name }
  -1
end

def binary_search(student_array, student_name)
  search_hash = {}
  student_array.each_with_index do |student, index|
    search_hash[student.first_name] = index
  end
  sorted = search_hash.sort

  correct_index = nil

  until correct_index != nil || sorted.empty?
    middle = sorted.length / 2
    if sorted[middle][0] == student_name
      correct_index = sorted[middle][1]
    elsif student_name > sorted[middle][0]
      sorted = sorted.slice(middle+1..-1)
    elsif student_name < sorted[middle][0]
      sorted = sorted.slice(0..middle-1)
    end
  end
  return -1 if sorted.empty?
  correct_index
end

students = []
alex = Student.new("Alex",[100,100,100,0,100])
steve = Student.new("Steve",[10,22,50,89,54])
george = Student.new("George",[30,52,80,19,54])
lindsay = Student.new("Lindsay",[10,32,70,35,54])
rocco = Student.new("Rocco",[10,22,53,39,54])
students.push(alex,steve,george,lindsay,rocco)

# DRIVER TESTS GO BELOW THIS LINE
p binary_search(students, "Alex")
p binary_search(students, "Rocco")
p binary_search(students, "Steve")
p binary_search(students, "George")
p binary_search(students, "Lindsay")
p binary_search(students, "Bob")


# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

# Reflection
# What concepts did you review in this challenge?
#  Working with objects, accessing object attributes, working with hashes
# What is still confusing to you about Ruby?
#  Want to continue working with classes
# What are you going to study to get more prepared for Phase 1?
#  I really want to focus on my JS prior to being onsite.