#Loop

i = 0
loop do             # This starts a loop that will continue indefinitely until a 'break' statement is encountered.
  puts "i is #{i}"  # This line prints the current value of 'i'.
  i += 1            # This line increments the value of 'i' by 1.
  break if i == 10  # This line checks if the value of 'i' is equal to 10. If it is, the loop will terminate.
end

#Guess Game

secret_number = rand(1..100)  # Generates a random number between 1 and 100
guesses_left = 5              # Number of allowed guesses
correct_guess = false          # Variable to track if guessed correctly

puts "Welcome to the Guessing Game!"
puts "Try to guess the secret number between 1 and 100."

while guesses_left > 0
  puts "You have #{guesses_left} guesses left."
  print "Enter your guess: "
  guess = gets.chomp.to_i  # Gets the user's guess and converts it to an integer

  if guess == secret_number
    correct_guess = true
    break  # Exit the loop if guess is correct
  elsif guess < secret_number
    puts "Too low. Try again."
  else
    puts "Too high. Try again."
  end

  guesses_left -= 1  # Reduce the number of remaining guesses
end

if correct_guess
  puts "Congratulations! You guessed the secret number #{secret_number}!"
else
  puts "Sorry, you've run out of guesses. The secret number was #{secret_number}."
end


#While Loop

i = 0
while i < 10 do
  puts "i is #{i}"
  i += 1
end

while gets.chomp != "yes" do
    puts "Are we there yet?"
end


#Until Loop

i = 0
until i >= 10 do
 puts "i is #{i}"
 i += 1
end


#Ranges

puts (1..5).to_a.inspect     # inclusive range: 1, 2, 3, 4, 5
puts (1...5).to_a.inspect    # exclusive range: 1, 2, 3, 4

# We can make ranges of letters, too!
puts ('a'..'d').to_a.inspect # a, b, c, d


#For Loop

for i in 0..5
    puts "#{i} zombies incoming!"
end


#Times Loop

5.times do
    puts "Hello, world!"
end

5.times do |number|
    puts "Alternative fact number #{number}"
end

#Upto and Downto loops

5.upto(10) { |num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) { |num| print "#{num} " }   #=> 10 9 8 7 6 5

