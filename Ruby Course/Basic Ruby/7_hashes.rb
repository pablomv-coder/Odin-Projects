#Creating Hashes

my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}

# Printing the hash contents
puts "my_hash: #{my_hash.inspect}"


#Accesing Values

shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

shoes["summer"]   #=> "sandals"

#If you try to access a key that doesn’t exist in the hash, it will return nil
shoes["hiking"]   #=> nil

shoes.fetch("hiking")   #=> KeyError: key not found: "hiking"

shoes.fetch("hiking", "hiking boots") #=> "hiking boots"


#Adding and changing data

shoes["fall"] = "sneakers"

shoes     #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}

shoes["summer"] = "flip-flops"
shoes     #=> {"summer"=>"flip-flops", "winter"=>"boots", "fall"=>"sneakers"}


#Removing data

shoes.delete("summer")    #=> "flip-flops"
shoes                     #=> {"winter"=>"boots", "fall"=>"sneakers"}


#Methods

books = {
  "Infinite Jest" => "David Foster Wallace",
  "Into the Wild" => "Jon Krakauer"
}

books.keys      #=> ["Infinite Jest", "Into the Wild"]
books.values    #=> ["David Foster Wallace", "Jon Krakauer"]

#Merging two hashes

hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }

#Symbols as hash keys

# 'Rocket' syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}
# 'Symbols' syntax
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

american_cars[:ford]    #=> "Mustang"
japanese_cars[:honda]   #=> "Accord"



