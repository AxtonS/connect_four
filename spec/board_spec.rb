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
        A1: 0, A2: 0, A3: 0, A4: 0, A5: 0, A6: 0, A7: 0,
        B1: 0, B2: 0, B3: 0, B4: 0, B5: 0, B6: 0, B7: 0,
        C1: 0, C2: 0, C3: 0, C4: 0, C5: 0, C6: 0, C7: 0,
        D1: 0, D2: 0, D3: 0, D4: 0, D5: 0, D6: 0, D7: 0,
        E1: 0, E2: 0, E3: 0, E4: 0, E5: 0, E6: 0, E7: 0,
        F1: 0, F2: 0, F3: 0, F4: 0, F5: 0, F6: 0, F7: 0
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
        6.times {subject.place('r', 7)}
        expect(subject.board[:A7]).to eql('r')
      end
    end
    context 'when column is full' do
      it 'should return nil' do
        6.times {subject.place('r', 2)}
        expect(subject.place('y', 2)).to be_nil
      end
    end
  end
end
