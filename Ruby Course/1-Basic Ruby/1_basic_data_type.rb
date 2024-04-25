# NUMBERS

# Addition
puts "1 + 1 = #{1 + 1}"   #=> 2

# Subtraction
puts "2 - 1 = #{2 - 1}"   #=> 1

# Multiplication
puts "2 * 2 = #{2 * 2}"   #=> 4

# Division
puts "10 / 5 = #{10 / 5}"  #=> 2

# Exponent
puts "2 ** 2 = #{2 ** 2}"  #=> 4
puts "3 ** 4 = #{3 ** 4}"  #=> 81

# Modulus (find the remainder of division)
puts "8 % 2 = #{8 % 2}"   #=> 0  (8 / 2 = 4; no remainder)
puts "10 % 4 = #{10 % 4}"  #=> 2  (10 / 4 = 2 with a remainder of 2)


puts "17 / 5 = #{17 / 5}"    #=> 3, not 3.4

puts "17 / 5.0 = #{17 / 5.0}"  #=> 3.4


# To convert an integer to a float:
puts "13.to_f = #{13.to_f}"   #=> 13.0

# To convert a float to an integer:
puts "13.0.to_i = #{13.0.to_i}" #=> 13
puts "13.9.to_i = #{13.9.to_i}" #=> 13


puts "6.even? = #{6.even?}" #=> true
puts "7.even? = #{7.even?}" #=> false

puts "6.odd? = #{6.odd?}" #=> false
puts "7.odd? = #{7.odd?}" #=> true


###########################

# STRINGS


#concatenation

# With the plus operator:
puts "\"Welcome \" + \"to \" + \"Odin!\" = #{ "Welcome " + "to " + "Odin!" }"   #=> "Welcome to Odin!"

# With the shovel operator:
puts "\"Welcome \" << \"to \" << \"Odin!\" = #{ "Welcome " << "to " << "Odin!" }"  #=> "Welcome to Odin!"

# With the concat method:
puts "\"Welcome \".concat(\"to \").concat(\"Odin!\") = #{ "Welcome ".concat("to ").concat("Odin!") }"  #=> "Welcome to Odin!"


#substring

puts "hello"[0]      #=> "h"

puts "hello"[0..1]   #=> "he"

puts "hello"[0, 4]   #=> "hell"

puts "hello"[-1]     #=> "o"


#escape characters

puts "\\"  #=> Need a backslash in your string?
puts "\b"  #=> Backspace
puts "\r"  #=> Carriage return, for those of you that love typewriters
puts "\n"  #=> Newline. You'll likely use this one the most.
puts "\s"  #=> Space
puts "\t"  #=> Tab
puts "\""  #=> Double quotation mark
puts "\'"  #=> Single quotation mark


#interpolation

name = "Odin"

puts "Hello, #{name}" #=> "Hello, Odin"
puts 'Hello, #{name}' #=> "Hello, #{name}"


#Common string methods
#capitalize

puts "hello".capitalize #=> "Hello"

#include?

puts "hello".include?("lo")  #=> true

puts "hello".include?("z")   #=> false

#upcase

puts "hello".upcase  #=> "HELLO"
#downcase

puts "Hello".downcase  #=> "hello"
#empty?

puts "hello".empty?  #=> false

puts "".empty?       #=> true
#length

puts "hello".length  #=> 5
#reverse

puts "hello".reverse  #=> "olleh"
#split

puts "hello world".split  #=> ["hello", "world"]

puts "hello".split("")    #=> ["h", "e", "l", "l", "o"]
#strip

puts " hello, world   ".strip  #=> "hello, world"


puts "he77o".sub("7", "l")           #=> "hel7o"

puts "he77o".gsub("7", "l")          #=> "hello"

puts "hello".insert(-1, " dude")     #=> "hello dude"

puts "hello world".delete("l")       #=> "heo word"

puts "!".prepend("hello, ", "world") #=> "hello, world!"

=begin
 Converting other objects to strings
    Using the to_s method, you can convert pretty much anything to a string. 
    Here are some examples: 
=end


puts 5.to_s        #=> "5"

puts nil.to_s      #=> ""

puts :symbol.to_s  #=> "symbol"


#SYMBOLS

=begin
Create a symbol
To create a symbol, put a colon at the beginning of some text:
=end

puts :my_symbol

puts "string" == "string"  #=> true

puts "string".object_id == "string".object_id  #=> false

puts :symbol.object_id == :symbol.object_id    #=> true

