# 1 - requiring another file enables you to call its methods in this file
# 2 - you can exclude the .rb from the file name
# 3 - "./" means the file is located in the same directory as this one is
require "./board"

class Player
  # optional initialize method
  def initialize(player_count)
    @player_count = player_count
  end

  def double_players
    @player_count * 2
  end

  # calling a class method from another file
  def board_material
    Board.style
  end

  # calling an instance method from another file
  def board_difficulty
    Board.new.level
  end
end


# the commands you want to execute
new_players = Player.new(2)
p new_players.double_players
p new_players.board_material
p new_players.board_difficulty


# in order to run this "program":
# 1 - cd into the tic-tac-toe directory
# 2 - run `ruby player.rb`
