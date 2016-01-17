# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent .75 hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

 #  class CreditCard
 #  def initialize(credit_card)
 #    @credit_card=credit_card

 #    raise ArgumentError.new "Please input a 16 digit number" if   @credit_card.to_s.length != 16

 #  end

 # def check_card
 #      second_digits = []
 #      credit_card_arr = @credit_card.to_s.split("").map! {|x| x.to_i }

 #      credit_card_arr.each_with_index do |num, idx|
 #        if idx == 0 || idx % 2 == 0
 #          second_digits << num * 2
 #        else
 #          second_digits << num
 #        end
 #      end

 #      second_digits.map! {|x| x.to_s }.join("").split("").map! {|x| x.to_i }
 #      second_digits.reduce(:+) % 10 == 0 ? true : false
 #    end
 #  end



# Refactored Solution

 class CreditCard
  def initialize(credit_card)
    @credit_card=credit_card

    raise ArgumentError.new "Please input a 16 digit number" if   @credit_card.to_s.length != 16

  end

    def check_card
      second_digits = []
      credit_card_arr = @credit_card.to_s.split("").map! {|x| x.to_i }

      credit_card_arr.each_with_index do |num, idx|
        if idx == 0 || idx % 2 == 0
          second_digits << num * 2
        else
          second_digits << num
        end
      end

      digits = second_digits.map {|x| x.to_s }.join("").split("").map! {|x| x.to_i }
      digits.reduce(:+) % 10 == 0 ? true : false
    end
  end

# Reflection
# What was the most difficult part of this challenge for you and your pair?
  # I mostly had difficulty because I did not fully read the algorithm, my
  # pair was navigating though and was quick to point out my mistakes in
  # implementing it.

# What new methods did you find to help you when you refactored?
  # I used reduce on both implementations to sum everything up quickly

# What concepts or learnings were you able to solidify in this challenge?
  # Still just getting better at implementing classes.