# frozen_string_literal: true

require './lib/board'

describe Board do
  describe '#initialize' do
    subject = Board.new
    it 'should create board object' do
      expect(subject).to be_an_instance_of Board
    end
  end

  describe '#state' do
    context 'when empty' do
      it 'returns an empty board' do
        expect(subject.state).to eql
      end
    end
  end
end
