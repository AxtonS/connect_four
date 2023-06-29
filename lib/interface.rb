# frozen_string_literal: true

# contains methods to interact with the game
class Interface
  def get_name(player)
    puts "Please enter #{player}'s name"
    gets.chomp
  end
end
