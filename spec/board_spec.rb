# frozen_string_literal: true

require './lib/board'

describe Board do
  describe '#initialize' do
    it 'should create board object' do
      expect(subject).to be_an_instance_of Board
    end
  end

  describe '#board' do
    it 'board should be empty' do
      expect(subject.board).to include(
        A1: 'empty', A2: 'empty', A3: 'empty', A4: 'empty', A5: 'empty', A6: 'empty', A7: 'empty',
        B1: 'empty', B2: 'empty', B3: 'empty', B4: 'empty', B5: 'empty', B6: 'empty', B7: 'empty',
        C1: 'empty', C2: 'empty', C3: 'empty', C4: 'empty', C5: 'empty', C6: 'empty', C7: 'empty',
        D1: 'empty', D2: 'empty', D3: 'empty', D4: 'empty', D5: 'empty', D6: 'empty', D7: 'empty',
        E1: 'empty', E2: 'empty', E3: 'empty', E4: 'empty', E5: 'empty', E6: 'empty', E7: 'empty',
        F1: 'empty', F2: 'empty', F3: 'empty', F4: 'empty', F5: 'empty', F6: 'empty', F7: 'empty'
      )
    end
  end

  describe '#place' do
    context 'when empty' do
      it 'should place piece in row F' do
        subject.place('r', 1)
        expect(subject.board[:F1]).to eql('r')
      end
      it 'should not return nil' do
        expect(subject.place('r', 3)).to_not be_nil
      end
    end
    context 'when placed second piece in same column' do
      it 'should place piece in row E' do
        subject.place('y', 1)
        subject.place('y', 1)
        expect(subject.board[:E1]).to eql('y')
      end
    end
    context 'when placing piece 6 times in same column' do
      it 'should place piece in row A' do
        6.times { subject.place('r', 7) }
        expect(subject.board[:A7]).to eql('r')
      end
    end
    context 'when column is full' do
      it 'should return nil' do
        6.times { subject.place('r', 2) }
        expect(subject.place('y', 2)).to be_nil
      end
    end
  end

  describe '#horizontal_win' do
    subject = Board.new

    context 'when A1 to A4 is taken' do
      pieces = %w[A1 A2 A3 A4]
      it 'by red' do
        pieces.each do |piece|
          subject.board[piece.to_sym] = 'red'
        end
        expect(subject.horizontal_win('red')).to be true
      end
    end

    context 'when B3 to B6 is taken' do
      pieces = %w[B3 B4 B5 B6]
      it 'by yellow' do
        pieces.each do |piece|
          subject.board[piece.to_sym] = 'yellow'
        end
        expect(subject.horizontal_win('yellow')).to be true
      end
    end

    context 'when F4 to F7 is taken' do
      pieces = %w[F4 F5 F6 F7]
      it 'by random' do
        pieces.each do |piece|
          subject.board[piece.to_sym] = 'random'
        end
        expect(subject.horizontal_win('random')).to be true
      end
    end

    it 'when not a win' do
      expect(subject.horizontal_win('any' || 'red' || 'yellow')).to be false
    end
  end

  describe '#vertical_win' do
    subject = Board.new

    context 'when A1 to D1 is taken' do
      pieces = %w[A1 B1 C1 D1]
      it 'by red' do
        pieces.each do |piece|
          subject.board[piece.to_sym] = 'red'
        end
        expect(subject.vertical_win('red')).to be true
      end
    end

    context 'when B3 to E3 is taken' do
      pieces = %w[B3 C3 D3 E3]
      it 'by any' do
        pieces.each do |piece|
          subject.board[piece.to_sym] = 'any'
        end
        expect(subject.vertical_win('any')).to be true
      end
    end

    context 'when C7 to F7 is taken' do
      pieces = %w[C7 D7 E7 F7]
      it 'by yellow' do
        pieces.each do |piece|
          subject.board[piece.to_sym] = 'yellow'
        end
        expect(subject.vertical_win('yellow')).to be true
      end
    end

    it 'when not a win' do
      expect(subject.vertical_win('any' || 'red' || 'yellow')).to be false
    end
  end

  describe '#diagonal_win' do
    subject = Board.new

    context 'when A1 to D4 is taken' do
      pieces = %w[A1 B2 C3 D4]
      it 'by red' do
        pieces.each do |piece|
          subject.board[piece.to_sym] = 'red'
        end
        expect(subject.diagonal_win('red')).to be true
      end
    end

    context 'when F4 to C7 is taken' do
      pieces = %w[F4 E5 D6 C7]
      it 'by yellow' do
        pieces.each do |piece|
          subject.board[piece.to_sym] = 'yellow'
        end
        expect(subject.diagonal_win('yellow')).to be true
      end
    end

    context 'when E2 to B6 is taken' do
      pieces = %w[E2 D3 C4 B5]
      it 'by random' do
        pieces.each do |piece|
          subject.board[piece.to_sym] = 'random'
        end
        expect(subject.diagonal_win('random')).to be true
      end
    end

    context 'when B3 to E6 is taken' do
      pieces = %w[B3 C4 D5 E6]
      it 'by any' do
        pieces.each do |piece|
          subject.board[piece.to_sym] = 'any'
        end
        expect(subject.diagonal_win('any')).to be true
      end
    end

    it 'when not a win' do
      expect(subject.diagonal_win('any' || 'red' || 'yellow')).to be false
    end
  end
end
