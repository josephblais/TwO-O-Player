class Player
  attr_accessor :lives, :name
  
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end
end


# TEST CODE
# player1 = Player.new
# player2 = Player.new
# player2.lives = 2
# puts player1.lives
# puts player2.lives