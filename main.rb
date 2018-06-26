require "./player"
require "./question"
require 'byebug'


P1 = Player.new('player1')
P2 = Player.new('player2')

puts "Ready player 1"
puts "Ready player 2"

def turn(current_player)

  puts "#{current_player.name}: What does #{Question.num1} plus #{Question.num2} equal?"

  guess_number = gets.chomp

  if Question.validation(guess_number)
    puts "YES! You are correct."
  else
    puts "Seriously? No!"
    current_player.incorrect
  end

  puts "#{P1.name}: #{P1.life}/3 vs #{P2.name}: #{P2.life}/3"

end


loop do
  turn(P1)
  break  puts "player 2 wins with a score of #{P2.life}/3" if(P1.gameover)
  turn(P2)
  break puts "player 1 wins with a score of #{P1.life}/3" if(P2.gameover)
  puts "----- NEW TURN -----"
end

puts "----- GAME OVER -----"
    puts "Godd bye!"

