# frozen_string_literal: true

require_relative '../lib/game'

describe Game do
  describe '#place' do
    subject(:game) { described_class.new }

    before(:each) do
      @space = game.instance_variable_get(:@board)
    end
    it 'places given symbol in top left space' do
      game.place(0, 0, 'A')
      expect(@space[0][0]).to eql('A')
    end

    it 'places given symbol in top right space' do
      game.place(0, 6, 'B')
      expect(@space[0][6]).to eql('B')
    end

    it 'places given symbol in bottom left space' do
      game.place(5, 0, 'Z')
      expect(@space[5][0]).to eql('Z')
    end

    it 'places given symbol in bottom right space' do
      game.place(5, 6, 'X')
      expect(@space[5][6]).to eql('X')
    end
  end
end
