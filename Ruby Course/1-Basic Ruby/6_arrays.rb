# Creating arrays
num_array = [1, 2, 3, 4, 5]
str_array = ["This", "is", "a", "small", "array"]

puts "num_array: #{num_array.inspect}" #=> [1, 2, 3, 4, 5]
puts "str_array: #{str_array.inspect}" #=> ["This", "is", "a", "small", "array"]

puts "Array.new: #{Array.new.inspect}" #=> []
puts "Array.new(3): #{Array.new(3).inspect}" #=> [nil, nil, nil]
puts "Array.new(3, 7): #{Array.new(3, 7).inspect}" #=> [7, 7, 7]
puts "Array.new(3, true): #{Array.new(3, true).inspect}" #=> [true, true, true]

# Accessing elements
str_array = ["This", "is", "a", "small", "array"]

puts "str_array[0]: #{str_array[0]}" #=> "This"
puts "str_array[1]: #{str_array[1]}" #=> "is"
puts "str_array[4]: #{str_array[4]}" #=> "array"
puts "str_array[-1]: #{str_array[-1]}" #=> "array"
puts "str_array[-2]: #{str_array[-2]}" #=> "small"

puts "str_array.first: #{str_array.first}" #=> "This"
puts "str_array.first(2): #{str_array.first(2).inspect}" #=> ["This", "is"]
puts "str_array.last(2): #{str_array.last(2).inspect}" #=> ["small", "array"]


# Adding and removing elements
num_array = [1, 2]

puts "num_array before push: #{num_array.inspect}" #=> [1, 2]
num_array.push(3, 4)      #=> [1, 2, 3, 4]
puts "num_array after push: #{num_array.inspect}" #=> [1, 2, 3, 4]
num_array << 5            #=> [1, 2, 3, 4, 5]
puts "num_array after <<: #{num_array.inspect}"   #=> [1, 2, 3, 4, 5]
popped_element = num_array.pop  #=> 5
puts "popped_element: #{popped_element}" #=> 5
puts "num_array after pop: #{num_array.inspect}"  #=> [1, 2, 3, 4]

num_array = [2, 3, 4]
puts "num_array before unshift: #{num_array.inspect}" #=> [2, 3, 4]
num_array.unshift(1)      #=> [1, 2, 3, 4]
puts "num_array after unshift: #{num_array.inspect}" #=> [1, 2, 3, 4]
shifted_element = num_array.shift  #=> 1
puts "shifted_element: #{shifted_element}" #=> 1
puts "num_array after shift: #{num_array.inspect}" #=> [2, 3, 4]

num_array = [1, 2, 3, 4, 5, 6]
popped_elements = num_array.pop(3) #=> [4, 5, 6]
puts "popped_elements: #{popped_elements.inspect}" #=> [4, 5, 6]
shifted_elements = num_array.shift(2) #=> [1, 2]
puts "shifted_elements: #{shifted_elements.inspect}" #=> [1, 2]
puts "num_array after pop and shift: #{num_array.inspect}" #=> [3]

# Adding and subtracting arrays
a = [1, 2, 3]
b = [3, 4, 5]

puts "a + b: #{(a + b).inspect}"         #=> [1, 2, 3, 3, 4, 5]
puts "a.concat(b): #{a.concat(b).inspect}"   #=> [1, 2, 3, 3, 4, 5]

puts "[1, 1, 1, 2, 2, 3, 4] - [1, 4]: #{([1, 1, 1, 2, 2, 3, 4] - [1, 4]).inspect}"  #=> [2, 2, 3]

# Basic methods
puts "[].empty?: #{[].empty?}"               #=> true
puts "[[]].empty?: #{[[]].empty?}"             #=> false
puts "[1, 2].empty?: #{[1, 2].empty?}"           #=> false

puts "[1, 2, 3].length: #{[1, 2, 3].length}"        #=> 3

puts "[1, 2, 3].reverse: #{[1, 2, 3].reverse.inspect}"       #=> [3, 2, 1]

puts "[1, 2, 3].include?(3): #{[1, 2, 3].include?(3)}"   #=> true
puts "[1, 2, 3].include?('3'): #{[1, 2, 3].include?("3")}" #=> false

puts "[1, 2, 3].join: #{[1, 2, 3].join.inspect}"          #=> "123"
puts "[1, 2, 3].join('-'): #{[1, 2, 3].join("-").inspect}"     #=> "1-2-3"

