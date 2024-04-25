# Debugging with puts

# Check if a string is an isogram, i.e., if it does not have any repeating letters.
# Returns true if the string is an isogram, false otherwise.
def isogram?(string)
    original_length = string.length  # Get the original length of the string
    string_array = string.downcase.split('')  # Convert the string to lowercase and split it into an array of characters
    unique_length = string_array.uniq.length  # Get the length of the array after removing duplicate characters
    original_length == unique_length  # Check if the original length is equal to the unique length (i.e., no repeating characters)
end
  
# Test the isogram? method with the string "Odin"
puts isogram?("Odin")
#=> false
  
  
# Debugging with puts and nil
  
puts "Using puts:"
puts []
p "Using p:"
p []
  
  
# Debugging with Pry-byebug
require 'pry-byebug'
  
# Check if a string is an isogram using Pry-byebug for debugging
# Returns true if the string is an isogram, false otherwise.
def isogram?(string)
    original_length = string.length  # Get the original length of the string
    string_array = string.downcase.split('')  # Convert the string to lowercase and split it into an array of characters
  
    binding.pry  # Start a Pry session to debug the code
  
    unique_length = string_array.uniq.length  # Get the length of the array after removing duplicate characters
    original_length == unique_length  # Check if the original length is equal to the unique length (i.e., no repeating characters)
end
  
isogram?("Odin")