#Declaring a variable

age = 18
puts age #=> 18

age = 18 + 5
puts age #=> 23

age = 18
age += 4
puts age #=> 22

age = 18
age -= 2
puts age #=> 16

cash = 10
cash *= 2
puts cash #=> 20

temperature = 40
temperature /= 10
puts temperature #=> 4

#how to name variables

#snake_case:

# bad
a = 19
string = "John"

# good
age = 19
name = "John"
can_swim = false


#Variables are references

desired_location = "Barcelona"
johns_location = desired_location

puts desired_location  #=> "Barcelona"
puts johns_location    #=> "Barcelona"

johns_location.upcase!
puts desired_location        #=> "BARCELONA"
puts johns_location          #=> "BARCELONA"
