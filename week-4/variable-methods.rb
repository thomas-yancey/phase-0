def full_name_greeting
    puts "What is your first name?"
    first_name = gets.chomp
    puts "What is your middle name?"
    middle_name = gets.chomp
    puts "What is your last name?"
    last_name = gets.chomp
    "Hello #{first_name} #{middle_name} #{last_name}!"
end

puts full_name_greeting

def bigger_better_fav_number
    puts "What is your favorite number?"
    fav_num = gets.chomp.to_i
    "But #{fav_num + 1} is so much bigger and better!"
end

puts bigger_better_fav_number

=begin
How do you define a local variable?
    defining a local variable is done with the following syntax --> variable_name = value
How do you define a method?
    defining a method is done using the following syntax
        
    def method_name
        codeblock
    end
        
What is the difference between a local variable and a method?
    a local variable is a name used to reference a value, a method is a name to reference a code block

How do you run a ruby program from the command line?
    first make sure the file is saved as a .rb file. From the terminal make sure you lead to the path of the file or are currently in the directory housing the file. Simply have ruby followed by a space followed by the filename.(ex. ruby ruby_file.rb)

How do you run an RSpec file from the command line?
    Everything the same as a ruby file except when executing the file have rspec in the space of ruby (ex rspec spec_file.rb). Also make sure the rspec gem is installed.
What was confusing about this material? What made sense?
    This material was pretty straightforward to me only because I have read this book in preparation for the interview. I did trip up a few times running rspec files.
    
    ADD LINKS HERE
=end