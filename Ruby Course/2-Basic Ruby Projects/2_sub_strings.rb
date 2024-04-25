def substrings(word, dictionary)
    # Initialize an empty hash to store the substrings and their frequencies
    substrings_count = Hash.new(0)
  
    # Convert the word to lowercase to make the matching case insensitive
    word = word.downcase
  
    # Iterate through each word in the dictionary
    dictionary.each do |substring|
      # Count the occurrences of the substring in the word
      occurrences = word.scan(substring.downcase).count
      # Add the substring and its count to the hash
      substrings_count[substring] += occurrences if occurrences > 0
    end
  
    # Return the hash of substrings and their frequencies
    return substrings_count
end

# Test the substrings method
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
puts substrings("below", dictionary)
#=> { "below" => 1, "low" => 1 }
  
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
#=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
  