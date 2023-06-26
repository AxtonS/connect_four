# frozen_string_literal: true

# contains attributes for player names and colors
class Player
  attr_reader :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end
end
