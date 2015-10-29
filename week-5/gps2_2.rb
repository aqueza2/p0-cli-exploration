=begin
pseudocode:

Use hash data structure

Create a new list:
method creates new empty hash.

Add an item with a quantity to the list:
Input would be an item and a quantity
Output would be updated list

Remove an Item from the list:
Input would be an item and quantity
Output updated list OR removed item

Update quantities for items in your list:
Input would be item name and quantity change
Output new list

Print the list:
Output list with desired formatting.

=end

#RELEASE TWO
def create_list(item_name, quantity)
  @list = {}
  @list[item_name] = quantity
  return @list
end

puts create_list("supplies", 4)

def add_item(other_item, new_quantity)
    @list[other_item] = new_quantity
  return @list
end
puts add_item('a', 5)
puts add_item('b', 4)

def remove_item(item_name)
  if @list[item_name] == nil
    print "This item is not in your list"
  else @list.delete(item_name)
  end
  return @list
end

puts remove_item('a')

def update_list(item_name, quantity)
  @list[item_name] = quantity
  return @list
end

puts update_list('b',7)

def print_list()
  @list.each {|x,y| puts "#{x}: #{y}"}
end
puts print_list

#RELEASE 3
def create_list(item_name, quantity)
  @list = {}
  @list[item_name] = quantity
  return @list
end

puts create_list("Lemonade", 2)

def add_item(other_item, new_quantity)
    @list[other_item] = new_quantity
  return @list
end
puts add_item('Tomatoes', 3)
puts add_item('Onions', 1)
puts add_item('Ice Cream', 4)

def remove_item(item_name)
  if @list[item_name] == nil
    print "This item is not in your list"
  else @list.delete(item_name)
  end
  return @list
end

puts remove_item('Lemonade')

def update_list(item_name, quantity)
  @list[item_name] = quantity
  return @list
end

puts update_list('Ice Cream',1)

def print_list()
  @list.each {|x,y| puts "#{x}: #{y}"}
end
puts print_list

#REFACTOR

def create_list(item_name, quantity)
  @list = {}
  @list[item_name] = quantity
end

def add_item(other_item, new_quantity)
    @list[other_item] = new_quantity
end

def remove_item(item_name)
  if @list[item_name] == nil
    print "This item is not in your list"
  else
    @list.delete(item_name)
  end
end

def update_list(item_name, quantity, new_item_name= item_name)
  remove_item(item_name)
  add_item(new_item_name, quantity)
end


def print_list()
  @list.each {|x,y| puts "#{x}: #{y}"}
end

create_list("Lemonade", 2)
add_item('Tomatoes', 3)
add_item('Onions', 1)
add_item('Ice Cream', 4)
remove_item('Lemonade')
update_list('Ice Cream',1, "Ice Cream")
print_list

## REFLECTION
# What did you learn about pseudocode from working on this challenge?
#Pseudocode can be very beneficial if you know how to do it so it is detailed and organized. My partner and didn't do it so detailed. At first it was hard to understand what it was that was being asked of us to do (meaning whether or not we were supposed to use and actual hash or just the hash structure) and whether or not we were allowed to use ruby methods.
# What are the tradeoffs of using Arrays and Hashes for this challenge?
# It was best to use hashes in this challenge because it organizes things into pairs (key and value). Hashes also allow you to retrieve the value by just calling the key you gave it. If we would have used arrays we would have had to remember the relative position of each object in order to retrieve its value.
# What does a method return?
# The return value of any method is the same as the value of the last expression evaluated during execution of the method.
# What kind of things can you pass into methods as arguments?
# Arguments are objects. Almost everything in Ruby is an object, although some syntactic structures that help create and manipulate objects aren't objects themselves.
# How can you pass information between methods?
#You can use instance variables (@) to make variables accessible across methods.
# What concepts were solidified in this challenge, and what concepts are still confusing?
# I noticed that I am still struggling a little bit with following how data flows. My partner had a little bit of experience with programming, so he knew way more than I did. I learned a few things. I feel like I am struggling a little bit, and I wonder if it is normal. It's not that I don't understand each ceoncept, because when I see these things individually I know how to use them. It is when I have to put everything together that I have a bit of a hard time.I just know I have to keep working the problems and not give up. Hopefully with practice things get better.
