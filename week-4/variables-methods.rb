
puts "Hello there, and what\'s your first name"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hello, "+first_name+" "+middle_name+" "+last_name+"! "

puts "What is your favorite number?"
favorite_number = gets
puts (favorite_number.to_i  + 1).to_s + " is a bigger and better number!"
