require "./game"
require "./player"
require "./question"

# Setup players in the beginning
print "Enter Player 1 name: "
name1 = gets.chomp.to_s
print "Enter Player 2 name: "
name2 = gets.chomp.to_s

player1 = Player.new(name1)
player2 = Player.new(name2)

# Setting current player
game = Game.new(player1, player2)

while game.players[0].life > 0 game.players[1].life > 0 do 

  # Generate questions 
  puts "--- New Turn ---"
  question = Question.new
  print "#{game.current_player.name}: #{question.make_question}"
  answer = question.answer

  # ask for answer
  input = gets.chomp.to_i

  # Check the answer
  if (input != answer)
    game.subtract_life
  end

  game.report_life

  #change turn 
  game.change_player


end 