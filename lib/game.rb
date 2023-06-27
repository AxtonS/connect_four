# frozen_string_literal: true

# contains methods for game flow and interface
class Game
  attr_accessor :current_player
  
  def switch_player(next_player)
    @current_player = next_player
  end
end
