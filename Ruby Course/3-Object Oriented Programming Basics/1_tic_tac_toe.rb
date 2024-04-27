class Board
    def initialize
      @cells = Array.new(3) { Array.new(3, ' ') }
    end
  
    def display
      puts "  1 2 3"
      @cells.each_with_index do |row, i|
        print "#{i + 1} "
        puts row.join('|')
        puts '  -----'
      end
    end
  
    def update(row, col, symbol)
      @cells[row][col] = symbol if empty?(row, col)
    end
  
    def empty?(row, col)
      @cells[row][col] == ' '
    end
  
    def winner?(symbol)
      @cells.any? { |row| row.all?(symbol) } || 
      @cells.transpose.any? { |col| col.all?(symbol) } || 
      [@cells[0][0], @cells[1][1], @cells[2][2]].all?(symbol) || 
      [@cells[0][2], @cells[1][1], @cells[2][0]].all?(symbol)
    end
  
    def tie?
      @cells.all? { |row| row.none?(' ') }
    end
end
  

class Player
    attr_reader :name, :symbol
  
    def initialize(name, symbol)
      @name = name
      @symbol = symbol
    end
  
    def move(board)
      loop do
        print "#{name}, enter your move (row col): "
        row, col = gets.chomp.split.map(&:to_i)
        if valid_move?(board, row - 1, col - 1)
          board.update(row - 1, col - 1, symbol)
          break
        else
          puts 'Invalid move! Try again.'
        end
      end
    end
  
    private
  
    def valid_move?(board, row, col)
      (0..2).cover?(row) && (0..2).cover?(col) && board.empty?(row, col)
    end
end
  

class Game
    def initialize
      @board = Board.new
      @player1 = Player.new('Player 1', 'X')
      @player2 = Player.new('Player 2', 'O')
      @current_player = @player1
    end
  
    def play
      loop do
        @board.display
        @current_player.move(@board)
        if winner?(@current_player.symbol)
          @board.display
          puts "#{@current_player.name} wins!"
          break
        elsif @board.tie?
          @board.display
          puts "It's a tie!"
          break
        end
        switch_players
      end
    end
  
    private
  
    def winner?(symbol)
      @board.winner?(symbol)
    end
  
    def switch_players
      @current_player = (@current_player == @player1) ? @player2 : @player1
    end
end
  
# Start the game
Game.new.play


=begin

1-Starting the Game:
When the game starts, you'll see an empty 3x3 grid numbered from 1 to 9.

2-Player Turns:
The game begins with Player 1 (X) making their move.
Player 1 must input the row and column coordinates where they want to place their X mark on the board.
After Player 1 makes their move, the turn switches to Player 2 (O).
Player 2 must input the row and column coordinates where they want to place their O mark on the board.

3-Entering Coordinates:
To make a move, you need to input the row and column coordinates separated by a space.
For example, if you want to place your mark in the top-left corner of the board, you should input "1 1".

4-Game Rules:
The objective of the game is to place three marks of the same type (X or O) in a row, either horizontally, vertically, or diagonally.
The game continues until one player wins or all the cells on the board are occupied, resulting in a draw.

5-Winning the Game:
If a player manages to place three of their marks in a row, that player wins the game.
The game will display a message indicating which player has won.

6-Draw:
If all the cells on the board are occupied and there is no winner, the game ends in a draw.
The game will display a message indicating that the game has ended in a draw.

7-Ending the Game:
After a winner is determined or there's a draw, the game will end, and the final board along with the result will be displayed.

=end
