##What does puts do?
puts writes to the screen whatever comes after it. It basically does the same as print plus a new line.

##What is an integer? What is a float?
A float is a number with decimal points, a integer is a number without decimal points. 
    
##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
division with floats is more specific, giving you the actual answer. Division with integers will do the same but round down to the nearest integer --> 10 / 3.0 == 3.3333333 while 10 / 3 == 3

##Program to calculate and print on seperate lines number of hours in a year and the number of minutes in a decade
    puts 24 * 365
    puts 60 * 24 * 365 * 10

##How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby handles all math functions in the same way a calculator does. In order to get the fully accurate answer use floats. To return a value with no decimals rounded down use integers.

##What is the difference between integers and floats?
As stated above floats have decimal points while integers do not. If you divide integers you will return a number with no decimals regardless of whether a standard computation would produce them or not. 

##What is the difference between integer and float division?
Integer division returns a number rounded down to the nearest whole number. Float division returns the precise answer with decimals.

##What are strings? Why and when would you use them?
Strings are all text. You would use them to output information (possibly return results of a form submission)

##What are local variables? Why and when would you use them?
Variables are the way in which you assign a value to a name (syntax: variable_name = value) . local variables are variables that live within a method. They are used to store values within your program, they can be variables that do do not need to leave your method and can help store earlier values in functions. 

##How was this challenge? Did you get a good review of some of the basics?
This challenge was relatively easy to me only because I have read this book before in preparation to applying. Still it is always good to go back and refresh my memory on the material.
    
###[defining-variables ruby file!](defining-variables.rb)
###[simple-string ruby file!](simple-strings.rb)
###[basic-math ruby file!](basic-math.rb)
