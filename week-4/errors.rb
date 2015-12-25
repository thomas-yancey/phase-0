# Analyze the Errors

# I worked on this challenge by myself
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => The error occurs on lines 14 and 15 but the output says line 170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => Unexpected end of input, it was expecting the keyword end
# 5. Where is the error in the code?
# => line 15
# 6. Why did the interpreter give you this error?
# => the while loop has no end and so therefore the method has no end and the end is given to the while loop. If you add an end after the puts statement it should take care of this.

# --- error -------------------------------------------------------

south_park = "cartman's hometown"

# 1. What is the line number where the error occurs?
# => 36
# 2. What is the type of error message?
# => NameError
# 3. What additional information does the interpreter provide about this type of error?
# => undefined local variable or method 'south_park'. 'south_park'
# 4. Where is the error in the code?
# => south_park has yet to be defined and is neither a method nor a variable
# 5. Why did the interpreter give you this error?
# => Because south_park is neither a variable or a method ruby does not know what it is. Make it a variable or a method to make the error disappear. I will assign south_park to a string of cartman's hometown

# --- error -------------------------------------------------------
def cartman ; "big boned child" ; end
cartman()

# 1. What is the line number where the error occurs?
# => 51
# 2. What is the type of error message?
# => NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# => the method cartman is undefined
# 4. Where is the error in the code?
# => It assumes cartman must be a method because there empty param brackets following it.
# 5. Why did the interpreter give you this error?
# => Since there is no method it does not know what to do. Either make a method or change cartman to a variable. I will make cartman into a method which returns a little about him.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# => 66
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => The method expected no arguments and got 1
# 4. Where is the error in the code?
# => On line 70 when cartmans_phrase is called with an argument
# 5. Why did the interpreter give you this error?
# => Because an argument was given to cartmans_phrase when the method takes no arguments. Remove the argument and there is no error

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("kiss my ass")

# 1. What is the line number where the error occurs?
# => 85
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => It expected 1 argument and received none
# 4. Where is the error in the code?
# => when the argument is called on line 89
# 5. Why did the interpreter give you this error?
# => there was no argument given that was expected to execute the method. add an argument to pass to the method to get rid of error.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming', "Stan")

# 1. What is the line number where the error occurs?
# => 106
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => it expected to arguments to be passed but received only one
# 4. Where is the error in the code?
# => when the method is called
# 5. Why did the interpreter give you this error?
# => when the method is called it never receives the name argument. Add a name argument and it will execute

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => 125
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => Ruby cannot make a string into a FixNum
# 4. Where is the error in the code?
# => line 125 when "Respect my authoritay!" is attempted to be multiplied by 5
# 5. Why did the interpreter give you this error?
# => Not fully sure on how this works, but you can puts string * 5 to output the string five times, but you cannot have 5 * string. Something with how ruby interprets this the 5 most come after the string.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20 / 1


# 1. What is the line number where the error occurs?
# => 140
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => a number attempts to be divided by zero
# 4. Where is the error in the code?
# => a number cannot be divided by zero
# 5. Why did the interpreter give you this error?
# => Just as you cannot divide a number by zero in arithmetic you can't in rubys interpreter. Divide it by another number such as 1

# --- error -------------------------------------------------------

require_relative "cartmans_essay.rb"

# 1. What is the line number where the error occurs?
# => 156
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => require_relative is unable to load this file
# 4. Where is the error in the code?
# => In the directory that this code is searching for a file. also ruby cannot load a .md file
# 5. Why did the interpreter give you this error?
# => The file cartmans_essay.md does not exist nor can ruby load it. Add a file called cartmans_essay.txt or .rb to that file path to have the error go away.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
Which error was the most difficult to read?
Probably the LoadError, it did not indicate whether or not it could not load the file
due to the fact that it did not exist or due to the fact that it could not read that
type of file

How did you figure out what the issue with the error was?
Trial and error. Looked up how require_relative worked to see if the syntax was correct
and then finally just tried renaming the file to a .rb file

Were you able to determine why each error message happened based on the code?
Yes

When you encounter errors in your future code, what process will you follow to help you debug?
read the error message, see what info I can gather from it and work from there.

=end