# A. Given the following data structure:

a = ["Anil", "Erik", "Jonathan"]
# How would you return the string "Erik"?
p a [1]
# How would you add your name to the array
a << 'David'
p a
# B. Given the following data structure:

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
# How would you return the string "One"?

p h[1]
# How would you return the string "Two"?
p h[:two]
# How would you return the number 2?
p h["two"]
# How to return the key :two
p array = h.keys[2]
# How would you add {3 => "Three"} to the hash?
h[3] = "Three"

p h
# How would you add {:four => 4} to the hash?
h.merge! :four => 4
p h
# C. Given the following data structure:

p is = {true => "It's true!", false => "It's false"}
# # What is the return value of 
p is[2 + 2 == 4]
# "its true"
# # What is the return value of is["Erik" == "Jonathan"]?
p is["Erik" == "Jonathan"]
# # What is the return value of is[9 > 10]?
p is[9 > 10]
# # What is the return value of is[0]?
p is[0]
# # What is the return value of is["Erik"]?
p is["Erik"]
# # D. Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}
# How would you access Jonathan's Twitter handle (i.e. the string "tronathan")?
 p users["Jonathan"][:favorite_numbers]
 
# How would you add the number 7 to Erik's favorite numbers?
users["Erik"][:favorite_numbers].push(7)

p users["Erik"][:favorite_numbers]

# How would you add yourself to the users hash?
p users.keys << 'David'

# How would you return the array of Erik's favorite numbers?

p users['Erik'][:favorite_numbers]

# How would you return the smallest of Erik's favorite numbers?
p users['Erik'][:favorite_numbers].sort![0]
# # How would you return an array of Anil's favorite numbers that are also even?
p array = users['Erik'][:favorite_numbers]

p array.select{|x| x%2 == 0}
p array.select{|x| x.even?}
# # How would you return an array of the favorite numbers common to all users?
p "================================="

p u1 = users["Jonathan"][:favorite_numbers]
p u2 = users['Erik'][:favorite_numbers]
p u3 = users['Anil'][:favorite_numbers]

(u1 & u2 & u3).each{|i| puts "the number #{i} in the array"}

# # How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?


p c1 = users["Jonathan"][:favorite_numbers]
p c2 = users['Erik'][:favorite_numbers]
p c3 = users['Anil'][:favorite_numbers]


p c1.zip(c2,c3).flatten.compact.sort.uniq
















# a = ["Anil", "Erik", "Jonathan"]

# p a[1]

# p a.push('David')

# h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}



# h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

#  # p h.values[1]
#  # p h.keys[2]

#  p h[1] 
#  p h [:two]
#  p h ["two"]

#  h[3]= "Three" # adding the string

#  h[:four] = 4

#  p h


#  is = {true => "It's true!", false => "It's false"}

# p is = i
	
