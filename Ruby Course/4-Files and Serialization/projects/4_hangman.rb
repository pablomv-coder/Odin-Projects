require 'set'

class Hangman
  def initialize(dictionary_file)
    @dictionary = load_dictionary(dictionary_file)
    @secret_word = select_secret_word
    @incorrect_guesses = 0
    @max_incorrect_guesses = 6
    @correct_letters = Set.new
    @incorrect_letters = Set.new
  end

  def play
    display_board

    until game_over?
      guess = prompt_guess
      if guess =~ /^[a-zA-Z]$/
        check_guess(guess.downcase)
      elsif guess.downcase == 'save'
        save_game
        puts 'Game saved. Exiting...'
        return
      else
        puts 'Invalid input. Please enter a single letter or "save".'
      end
      display_board
    end

    puts game_result
  end

  private

  def load_dictionary(file)
    File.readlines(file).map(&:strip)
  end

  def select_secret_word
    loop do
      word = @dictionary.sample
      return word if word.length >= 5 && word.length <= 12
    end
  end

  def display_board
    puts "Secret Word: #{masked_word}"
    puts "Incorrect Guesses: #{@incorrect_guesses}/#{@max_incorrect_guesses}"
    puts "Correct Letters: #{@correct_letters.to_a.join(', ')}"
    puts "Incorrect Letters: #{@incorrect_letters.to_a.join(', ')}"
  end

  def masked_word
    @secret_word.chars.map { |char| @correct_letters.include?(char) ? char : '_' }.join(' ')
  end

  def prompt_guess
    print 'Enter your guess (or "save" to save the game): '
    gets.chomp
  end

  def check_guess(guess)
    if @secret_word.include?(guess)
      @correct_letters.add(guess)
    else
      @incorrect_letters.add(guess)
      @incorrect_guesses += 1
    end
  end

  def game_over?
    @incorrect_guesses >= @max_incorrect_guesses || masked_word == @secret_word
  end

  def game_result
    if @incorrect_guesses >= @max_incorrect_guesses
      "You ran out of guesses! The secret word was '#{@secret_word}'. Better luck next time!"
    else
      "Congratulations! You guessed the secret word '#{@secret_word}'!"
    end
  end

  def save_game
    File.open('hangman_save.txt', 'w') do |file|
      file.puts Marshal.dump(self)
    end
  end
end

def load_game
  if File.exist?('hangman_save.txt')
    saved_game = File.read('hangman_save.txt')
    hangman = Marshal.load(saved_game)
    hangman.play
  else
    puts 'No saved game found.'
  end
end

def start_new_game
  puts 'Starting new game...'
  Hangman.new('../google-10000-english-no-swears.txt').play
end

puts 'Welcome to Hangman!'
puts 'Would you like to start a new game or load a saved game? (new/load)'
choice = gets.chomp.downcase

case choice
when 'new'
  start_new_game
when 'load'
  load_game
else
  puts 'Invalid choice. Exiting...'
end
