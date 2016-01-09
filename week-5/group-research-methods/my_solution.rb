# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.reject! {|item| item.to_s.include?(thing_to_delete) }
end

def my_hash_deletion_method!(source, thing_to_delete)
   source.delete(thing_to_delete)
   source
end

# Identify and describe the Ruby method(s) you implemented.
# for the array_deletion_method! I used the destructive reject method to make
# my method destructive, than I used to_s so the integers could access the include
# method.
# For the hash_deletion_method! I figured I only needed to use delete because only
# one key value can exist so no real iteration was neccessary.
