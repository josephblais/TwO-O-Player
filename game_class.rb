require './question_class' 
require './player_class'

class Game
  attr_accessor :player1, :player2, :current_player
  def initialize
    @player1 = Player.new('player1')
    @player2 = Player.new('player2')
    @current_player = @player1
  end

  def change_player
    @current_player == @player1 ?
       @current_player = @player2 :
      @current_player = @player1
  end

  def check_solution
    if @game_question.check_solution(gets.chomp.to_i)
      puts "Yeah bud that's right you're so smart."
    else 
      puts "Sorry, incorrect! The right answer is #{@game_question.answer}"
      @current_player.lose_life
    end
  end

  def get_winner
    if @current_player == player1
      puts "Player 2 wins!"
    else 
      puts "Player 1 wins!"
    end
  end

  def plays_game
   puts "GAME ON!"
   while @current_player.lives > 0 do 
    puts "-----NEW TURN-----"
    @game_question = Question.new
    puts @game_question.output
    check_solution
    if @current_player.lives > 0
      puts "-----CURRENT SCORE-----"
      puts "P1: #{@player1.lives}/3 v.s. P2: #{@player2.lives}/3"
      change_player
    else
      puts "-----GAME OVER-----"
      get_winner
    end
   end
  end
end