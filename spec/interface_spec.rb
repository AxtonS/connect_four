# frozen_string_literal: true

require './lib/interface'
require 'stringio'

describe Interface do
  describe '#get_name' do
    before(:each) do
      $stdin = StringIO.new('player')
    end
    it 'prompts user to enter a name' do
      expect { subject.get_name('player') }.to output("Please enter player's name\n").to_stdout
    end

    it 'returns user input' do
      expect(subject.get_name('player')).to eq('player')
    end
  end
end
