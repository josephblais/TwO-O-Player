#PLAYER
    #Both players are instances of this class
    #attr_writer :lives_method
    #STATE:
      #Lives: 3
      #Lives method: sets Lives -=1 if player gets a question wrong
  
class Player
  attr_accessor :lives
  
  def initialize
    @lives = 3
  end
end


# TEST CODE
# player1 = Player.new
# player2 = Player.new
# player2.lives = 2
# puts player1.lives
# puts player2.lives