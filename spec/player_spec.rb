# frozen_string_literal: true

require './lib/player'

describe Player do
  describe '#initialize' do
    subject = Player.new('name', 'rainbow')
    it 'should create Player object' do
      expect(subject).to be_an_instance_of Player
    end
  end

  describe '#name' do
    subject = Player.new('name', 'color')
    it 'should return player name' do
      expect(subject.name).to eql('name')
    end
  end

  describe '#color' do
    subject = Player.new('name', 'color')
    it 'should return player color' do
      expect(subject.color).to eql('color')
    end
  end
end
