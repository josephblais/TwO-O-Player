#CLASSES

  #PLAYER
    #Both players are instances of this class
    #attr_writer :lives_method
    #STATE:
      #Lives: 3
      #Lives method: sets Lives -=1 if player gets a question wrong
      

  #GAME
    # Handles the mechanics of taking input, updating scores, outputting questions

    #current_player = player1 #CLASSVARIABLE
    #other_player = player2
    

   # 1. Asks a question
   # 2. Gets input (get.chomps)
   # 3. Compare input -> answer
   # 3.5 IF input != answer, then lose a life
   # 4. Make sure life > 0
   # 4.5 IF live = 0, show gameover
   
   # 5. Output score
    #puts "P1: #{player1.lives}/3 v.s. P2: #{player2.lives}/3"

   # 6. Switch player
      #def whose_turn_is_it
        # if current_player == player1
        #   current_player = player2
        #   other_player = player1
        #end
        # if current_player == player2
        #   current_player = player1
        #   other_player = player2
        #end
      #end


  #QUESTION
    #Generate a random question + answer to check against input

    #var1 = rand(1...20)
    #var2 = rand(1...20)
    
    #def output
      #"What is #{var1} + #{var2}?"
    #end

    #def answer
    # return (var1 + var2).to_s ##to_s so that it compares to console input
    #end