# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Walter Kerr].
# I spent [1.25] hours on this challenge.

# Pseudocode

# Input: 16 digits (integer)
# Output: true or false depending on whether or not the card number is valid
# Steps:
=begin

First, check to see that we have sixteen digits.  If not, raise an ArgumentError.
If so, continue with code.

Put the digits into an array.

Split the array so that every other digit (odd_index digits) are in one array, and all of the others are in a second array.

In the first array (with odd indexed digits), double all of the elements.
Second array remains untouched.

Join the first and second array together.  Split the arrays so that each digit is its own element in an array.  Add all the elements together for one sum.

Divide the sum by 10 and if our remainder is 0, return true.  If not, return false.

=end

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard


  def initialize(number)
    @array = number.to_s.chars
      fail ArgumentError.new ("you screwed up!") if @array.count != 16
  end

  def check_card

    @even_indices = []
    @array.each_with_index {|number,index|
    if index.odd?
      @even_indices << number
    end
      }

    @odd_indices = []
    @array.each_with_index {|number,index|
      if index.even?
        @odd_indices << number
    end
      }

    @odd_indices.map! { |x| x.to_i*2}
    @even_indices.map! { |x| x.to_i }

    new_array = (@odd_indices + @even_indices).join.to_s.split('')
    new_array.map! {|x| x.to_i}

    p final_array = new_array.inject(0) { |sum, n| sum + n }

    if final_array % 10 == 0
      return true
    else
      return false
    end
  end
end

creditcard = CreditCard.new(4563960122001999)

creditcard.check_card


# Refactored Solution
class CreditCard


  def initialize(number)
    @array = number.to_s.chars
      fail ArgumentError.new ("you screwed up!") if @array.count != 16
  end

  def check_card

    @even_indices = []
    @array.each_with_index {|number,index|
    if index.odd?
      @even_indices << number
    end
      }

    @odd_indices = []
    @array.each_with_index {|number,index|
      if index.even?
        @odd_indices << number
    end
      }

    @odd_indices.map! { |x| x.to_i*2}
    @even_indices.map! { |x| x.to_i }

    new_array = (@odd_indices + @even_indices).join.to_s.split('')
    new_array.map! {|x| x.to_i}

    p final_array = new_array.inject(0) { |sum, n| sum + n }

    if final_array % 10 == 0
      return true
    else
      return false
    end
  end
end

creditcard = CreditCard.new(4563960122001999)

creditcard.check_card







# Reflection


