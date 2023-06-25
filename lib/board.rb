# frozen_string_literal: true

# contains board state, places pieces, and checks for win condition
class Board
  attr_accessor :board

  def initialize
    @board = {
      A1: 0, A2: 0, A3: 0, A4: 0, A5: 0, A6: 0, A7: 0,
      B1: 0, B2: 0, B3: 0, B4: 0, B5: 0, B6: 0, B7: 0,
      C1: 0, C2: 0, C3: 0, C4: 0, C5: 0, C6: 0, C7: 0,
      D1: 0, D2: 0, D3: 0, D4: 0, D5: 0, D6: 0, D7: 0,
      E1: 0, E2: 0, E3: 0, E4: 0, E5: 0, E6: 0, E7: 0,
      F1: 0, F2: 0, F3: 0, F4: 0, F5: 0, F6: 0, F7: 0
    }
  end

  def place(piece, column)
    rows = %w[F E D C B A]
    rows.each do |row|
      return @board[(row + column.to_s).to_sym] = piece if @board[(row + column.to_s).to_sym] == 0
    end
    nil
  end
end
