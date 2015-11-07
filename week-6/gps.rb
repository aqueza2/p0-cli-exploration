# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.
=begin
# Bakery Serving Size portion calculator.
#library stores the items and how many units are needed to make each item.
#this generally initializes the method with item and unit, which are inputs given.
def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  # if the key (food) is not in the library, then raise an argumenterror   because it's an invalid input

  library.each do |food|
    #first trip n loop (when the food IS in the library)
      # food == ["cookie", 1]
      # library[food] == nil
      # library[item_to_make] == 7

      # if nil is not equal to 7 (same comparison every loop)
        # then decrease error counter
      ###################################
      # if nil != nil (When the food is NOT in the library)

    if library[food] != library[item_to_make]
      p error_counter += -1
    end
  end

  # error counter can be 3 OR 0, nothing else;
  # will raise argument error when nil = nil.
  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # serving_size accesses the value at a certain key
  serving_size = library.values_at(item_to_make)[0]
  # serving_size = [7][0] == 7
  # serving_size_mod is the remainder between the given quantity and the value in library
  serving_size_mod = order_quantity % serving_size
  #
  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

# p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
#p serving_size_calc("THIS IS AN ERROR", 5)
=end

# REFACTORED

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  fail ArgumentError, "#{item_to_make} is not a valid input" unless library[item_to_make]

  serving_size = library[item_to_make]
  remainder = order_quantity % serving_size

  message = "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"

  leftover_message = ", you have #{remainder} leftover ingredients."

  if remainder == 0
    message
  else
    p message + leftover_message
      if remainder <= 4
        "We suggest that you make #{remainder} cookies."
      elsif remainder == 5
        "We suggest that you make a cake."
      else
        "We suggest that you make a cookie and a cake."
      end
  end

end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

