# frozen_string_literal: true

require './lib/board'

describe Board do
  describe '#initialize' do
    it 'should create board object' do
      expect(subject).to be_an_instance_of Board
    end
    context 'when empty' do
      it 'A1 space should be empty' do
        expect(subject.board[:A1]).to eql(0)
      end
      it 'F7 space should be empty' do
        expect(subject.board[:F7]).to eql(0)
      end
    end
  end

  describe '#state' do
  end
end
