def caesar_cipher(string, shift_factor)
    # Define an array of lowercase letters from a to z
    lowercase_alphabet = ('a'..'z').to_a
    # Define an array of uppercase letters from A to Z
    uppercase_alphabet = ('A'..'Z').to_a
  
    # Initialize an empty string to store the modified string
    modified_string = ""
  
    # Iterate through each character in the input string
    string.each_char do |char|
        # Check if the character is a lowercase letter
        if lowercase_alphabet.include?(char)
            # Find the index of the character in the lowercase alphabet
            index = lowercase_alphabet.index(char)
            # Shift the index by the shift factor and wrap around if necessary
            new_index = (index + shift_factor) % 26
            # Append the shifted character to the modified string
            modified_string << lowercase_alphabet[new_index]
            # Check if the character is an uppercase letter
        elsif uppercase_alphabet.include?(char)
            # Find the index of the character in the uppercase alphabet
            index = uppercase_alphabet.index(char)
            # Shift the index by the shift factor and wrap around if necessary
            new_index = (index + shift_factor) % 26
            # Append the shifted character to the modified string
            modified_string << uppercase_alphabet[new_index]
        else
            # If the character is not a letter, append it unchanged to the modified string
            modified_string << char
        end
    end
  
    # Return the modified string
    return modified_string
end
  
  # Test the caesar_cipher method
  puts caesar_cipher("What a string!", 5)
  #=> "Bmfy f xywnsl!"
  