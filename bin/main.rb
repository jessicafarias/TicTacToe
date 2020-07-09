#!/usr/bin/env ruby

require_relative '../lib/players.rb'
require_relative '../lib/game.rb'

game = GameCondition.new
puts 'Welcome to TicTacToe'
puts 'Who is the first player?'
player1 = Players.new(gets.chomp, 'X')
game.player_welcome(player1.name, player1.symbol)

puts 'Who is the second player?'
player2 = Players.new(gets.chomp, 'O')
game.player_welcome(player2.name, player2.symbol)

rematch = true
while rematch == true

  while game.check_win == false
    loop do
      game.printboard
      puts "#{player1.name} choose a position \n\n"
      input1 = gets.chomp
      if GameCondition.convertsymbol(input1) != 'No Valid'
        override = game.position_override(GameCondition.convertsymbol(input1), 'X')
      else
        puts 'Invalid character!'
      end
      break if override
    end

    break if game.check_win

    loop do
      game.printboard
      puts "#{player2.name} choose a position \n\n"
      input2 = gets.chomp
      if GameCondition.convertsymbol(input2) != 'No Valid'
        override = game.position_override(GameCondition.convertsymbol(input2), 'O')
      else
        puts 'Invalid character!'
      end
      break if override
    end
    p game.check_win

  end
  game.printboard

  var = game.who_is_winning(game.check_win, player1.name, player2.name)
  player1.winner_counter if player1.name == var
  player2.winner_counter if player2.name == var
  puts "\n RESULTS= P1=" + player1.count.to_s + ' vs P2=' + player2.count.to_s + ''

  print 'Do you want rematch Yes or No'
  match = gets.chomp
  if match.upcase == 'YES'
    rematch = true
    game.array = %w[a b c d e f g h i]
    game.count = 1
  else
    rematch = false
    print 'Goodbye'
  end
end
