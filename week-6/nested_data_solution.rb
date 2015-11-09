# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================

p hash [:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

#new_array = []

=begin
number_array.each do |element|
  element.each do |inner_element|
    if inner_element.is_a?(Array)
      inner_element.each do |third_layer|
        third_layer.to_i + 5
      end
    else
    inner_element.to_i + 5
    end
  end
end
=end

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner| p inner + 5}
  else
  p (element + 5)
  end
end


p number_array

#p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.each do |inner_element|
    if inner_element.is_a?(Array)
      inner_element.each do |third_layer_element|
        third_layer_element << "ly"
      if third_layer_element.is_a?(Array)
      third_layer_element.each do |last_layer_element|
        last_layer_element << "ly"
        end
        third_layer_element.delete("lyly")
      end
      end
    else
      inner_element << "ly"
    end

end

p startup_names

#REFLECTION
=begin
What are some general rules you can apply to nested arrays?
I don't know what general rules you could be talking about, but I do know that nested arrays are special in that they have different layers of accessing data, so you have to add layers to your code in order to manipulate the inner layers.
What are some ways you can iterate over nested arrays?
If you want to iterate over the layers, you have to use an iterator inside an iterator, all depending on how many layers there are.
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
The method that was given to us in the assignment ".kind_of?" was handy in this challenge. The first couple of exercise were easy, but that last one wasn't as easy. At first we tried doing our own research and trying to find new methods we could use, but eventually we just decided to use what was given to us in the exercise and it worked just fine.
=end