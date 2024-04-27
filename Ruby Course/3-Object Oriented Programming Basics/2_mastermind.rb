class Mastermind
    COLORS = ['R', 'G', 'B', 'Y', 'O', 'P']
  
    def initialize
      @secret_code = generate_secret_code
      @turns_remaining = 12
    end
  
    def play
      puts "Welcome to Mastermind!"
      puts "Try to guess the secret code. The colors are represented by: R (Red), G (Green), B (Blue), Y (Yellow), O (Orange), P (Purple)"
      puts "You have 12 turns. Enter your guesses in the format 'RGBY':"
  
      until game_over?
        display_board
        guess = get_player_guess
        feedback = evaluate_guess(guess)
        display_feedback(feedback)
        @turns_remaining -= 1
      end
  
      display_result
    end
  
    private
  
    def generate_secret_code
      Array.new(4) { COLORS.sample }
    end
  
    def evaluate_guess(guess)
      exact_matches = 0
      near_matches = 0
  
      @secret_code.each_with_index do |color, index|
        if guess[index] == color
          exact_matches += 1
        elsif @secret_code.include?(guess[index])
          near_matches += 1
        end
    end
  
      [exact_matches, near_matches]
    end
  
    def game_over?
      @turns_remaining.zero? || @secret_code == @current_guess
    end
  
    def display_board
      puts "Turns remaining: #{@turns_remaining}"
    end
  
    def get_player_guess
      print "Enter your guess (e.g., RGBY): "
      gets.chomp.upcase.chars
    end
  
    def display_feedback(feedback)
      exact_matches, near_matches = feedback
      puts "Exact matches: #{exact_matches}, Near matches: #{near_matches}"
    end
  
    def display_result
      if @secret_code == @current_guess
        puts "Congratulations! You guessed the secret code: #{@secret_code}"
      else
        puts "Sorry, you're out of turns. The secret code was: #{@secret_code}"
      end
    end
end
  
game = Mastermind.new
game.play
  

=begin


Mastermind Game

Description:
Mastermind is a code-breaking game where you have to guess a secret code consisting of four colors. 
After each guess, you receive feedback on the number of exact matches (correct color and position) and 
near matches (correct color but wrong position). 
The goal is to guess the secret code within a limited number of turns.


How to Play:

1-Start the game by running the script in the console.
2-You have 12 turns to guess the secret code.
3-Enter your guess in the format 'RGBY', where each letter represents a color ('R' for Red, 'G' for Green, 'B' for Blue, 'Y' for Yellow, 'O' for Orange, and 'P' for Purple).
4-After each guess, the game will provide feedback on the number of exact matches (correct color and position) and near matches (correct color but wrong position).
5-Keep guessing until you either guess the secret code correctly or run out of turns.
6-If you guess the secret code correctly within the given number of turns, you win. Otherwise, you lose.


Code Documentation:

*The Mastermind class represents the Mastermind game.
*The initialize method sets up the game by generating a secret code and initializing the number of turns remaining.
*The play method starts the game loop and allows the player to make guesses until the game is over.
*The generate_secret_code method generates a random secret code consisting of four colors.
*The evaluate_guess method compares the player's guess with the secret code and returns feedback on the number of exact matches and near matches.
*The game_over? method checks if the game is over by verifying if the player has guessed the code correctly or run out of turns.
*The display_board method displays the current number of turns remaining.
*The get_player_guess method prompts the player to enter a guess and returns the guess as an array of characters.
*The display_feedback method displays feedback on the number of exact matches and near matches for the current guess.
*The display_result method displays the final result of the game (win or lose) along with the secret code.

=end