# frozen_string_literal: true

require './lib/game'

describe Game do
  describe '#intialize' do
    it 'creats a game object' do
      expect(subject).to be_an_instance_of Game
    end

    it 'has a board object' do
      expect(subject.board).to be_an_instance_of Board
    end
  end

  describe '#switch_player' do
    subject = Game.new
    it 'changes current_player attribute' do
      subject.switch_player('new')
      expect(subject.current_player).to eql('new')
    end
  end
end
