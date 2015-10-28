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


