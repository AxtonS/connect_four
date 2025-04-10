# frozen_string_literal: true

# contains methods to manipulate and assess game state
class Game
  def initialize
    @board = [[' ', ' ', ' ', ' ', ' ', ' ', ' '],
              [' ', ' ', ' ', ' ', ' ', ' ', ' '],
              [' ', ' ', ' ', ' ', ' ', ' ', ' '],
              [' ', ' ', ' ', ' ', ' ', ' ', ' '],
              [' ', ' ', ' ', ' ', ' ', ' ', ' '],
              [' ', ' ', ' ', ' ', ' ', ' ', ' ']]
  end

  def display
    puts "\u{2503} #{@board[0][0]} \u{2503} #{@board[0][1]} \u{2503} #{@board[0][2]} \u{2503} #{@board[0][3]} \u{2503}"\
    " #{@board[0][4]} \u{2503} #{@board[0][5]} \u{2503} #{@board[0][6]} \u{2503}"
    puts "\u{2523}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}"\
    "\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}"\
    "\u{2501}\u{252B}"
    puts "\u{2503} #{@board[0][0]} \u{2503} #{@board[0][1]} \u{2503} #{@board[0][2]} \u{2503} #{@board[0][3]} \u{2503}"\
    " #{@board[0][4]} \u{2503} #{@board[0][5]} \u{2503} #{@board[0][6]} \u{2503}"
    puts "\u{2523}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}"\
    "\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}"\
    "\u{2501}\u{252B}"
    puts "\u{2503} #{@board[0][0]} \u{2503} #{@board[0][1]} \u{2503} #{@board[0][2]} \u{2503} #{@board[0][3]} \u{2503}"\
    " #{@board[0][4]} \u{2503} #{@board[0][5]} \u{2503} #{@board[0][6]} \u{2503}"
    puts "\u{2523}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}"\
    "\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}"\
    "\u{2501}\u{252B}"
    puts "\u{2503} #{@board[0][0]} \u{2503} #{@board[0][1]} \u{2503} #{@board[0][2]} \u{2503} #{@board[0][3]} \u{2503}"\
    " #{@board[0][4]} \u{2503} #{@board[0][5]} \u{2503} #{@board[0][6]} \u{2503}"
    puts "\u{2523}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}"\
    "\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}"\
    "\u{2501}\u{252B}"
    puts "\u{2503} #{@board[0][0]} \u{2503} #{@board[0][1]} \u{2503} #{@board[0][2]} \u{2503} #{@board[0][3]} \u{2503}"\
    " #{@board[0][4]} \u{2503} #{@board[0][5]} \u{2503} #{@board[0][6]} \u{2503}"
    puts "\u{2523}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}"\
    "\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}\u{2501}\u{254B}\u{2501}\u{2501}"\
    "\u{2501}\u{252B}"
    puts "\u{2503} #{@board[0][0]} \u{2503} #{@board[0][1]} \u{2503} #{@board[0][2]} \u{2503} #{@board[0][3]} \u{2503}"\
    " #{@board[0][4]} \u{2503} #{@board[0][5]} \u{2503} #{@board[0][6]} \u{2503}"
    puts "\u{2517}\u{2501}\u{2501}\u{2501}\u{253B}\u{2501}\u{2501}\u{2501}\u{253B}\u{2501}\u{2501}\u{2501}\u{253B}"\
    "\u{2501}\u{2501}\u{2501}\u{253B}\u{2501}\u{2501}\u{2501}\u{253B}\u{2501}\u{2501}\u{2501}\u{253B}\u{2501}\u{2501}"\
    "\u{2501}\u{251B}"
  end

  def place(row, column, symbol)
    @board[row][column] = symbol
  end
end

game = Game.new
game.display
