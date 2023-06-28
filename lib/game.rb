# frozen_string_literal: true

require 'board'
require 'player'
require 'interface'

# contains the game logic
class Game
  attr_accessor :current_player
  attr_reader :board, :player1, :player2

  def initialize
    @board = Board.new
  end

  def switch_player(next_player)
    @current_player = next_player
  end
end
