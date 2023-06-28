# frozen_string_literal: true

require './lib/interface'

describe Interface do
  describe '#name' do
    it 'prompts user to enter a name' do
      expect { subject.name('player_name') }.to output("Please enter player_name's name\n").to_stdout
    end
  end
end
