# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Alicia Quezada's solution
def my_array_finding_method(source, thing_to_find)
    source.select {|element| element.to_s.include? thing_to_find}
end

def my_hash_finding_method(source, thing_to_find)
   result = source.select {|word,value| value == thing_to_find}
   result.keys
end

# Identify and describe the Ruby method(s) you implemented.
# the ruby methods I used  were .select on both the
#array and the hash. Select basically does the same #thing that "find_all" does. It returns a new #collection containing all the elements of the #original collection that match the criteria in the #code block.
#In the array method i used .to_s because in the #array there are integers, and we want to treat #every element in the array as strings, not integers.
#I used .include? to see if the element was equal to #the letter I provided. It returns true if the given #object is present in self, otherwise returns false.

#  Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
# def my_array_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_sorting_method(source)
#    source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#