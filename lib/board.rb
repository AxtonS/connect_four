# frozen_string_literal: true

# contains board state, places pieces, and checks for win condition
class Board
  attr_accessor :board, :rows, :columns

  def initialize
    @board = {
      A1: 'empty', A2: 'empty', A3: 'empty', A4: 'empty', A5: 'empty', A6: 'empty', A7: 'empty',
      B1: 'empty', B2: 'empty', B3: 'empty', B4: 'empty', B5: 'empty', B6: 'empty', B7: 'empty',
      C1: 'empty', C2: 'empty', C3: 'empty', C4: 'empty', C5: 'empty', C6: 'empty', C7: 'empty',
      D1: 'empty', D2: 'empty', D3: 'empty', D4: 'empty', D5: 'empty', D6: 'empty', D7: 'empty',
      E1: 'empty', E2: 'empty', E3: 'empty', E4: 'empty', E5: 'empty', E6: 'empty', E7: 'empty',
      F1: 'empty', F2: 'empty', F3: 'empty', F4: 'empty', F5: 'empty', F6: 'empty', F7: 'empty'
    }
    @rows = ('A'..'F').to_a
    @columns = ('1'..'7').to_a
  end

  def place(piece, column)
    rows = %w[F E D C B A]
    rows.each do |row|
      return @board[(row + column.to_s).to_sym] = piece if @board[(row + column.to_s).to_sym] == 'empty'
    end
    nil
  end

  def horizontal_win(color)
    @rows.each do |row|
      @columns[(0..(@columns.length - 3))].each do |column|
        if [@board[(row + column).to_sym], @board[(row + (column.to_i + 1).to_s).to_sym],
            @board[(row + (column.to_i + 2).to_s).to_sym],
            @board[(row + (column.to_i + 3).to_s).to_sym]].all? { |space| space == color }
          return true
        end
      end
    end
    false
  end

  def vertical_win(color)
    (0..(@rows.length - 4)).to_a.each do |row|
      @columns.each do |column|
        if [@board[(@rows[row] + column).to_sym], @board[(@rows[row + 1] + column).to_sym],
            @board[(@rows[row + 2] + column).to_sym],
            @board[(@rows[row + 3] + column).to_sym]].all? { |space| space == color }
          return true
        end
      end
    end
    false
  end
end
