#!/usr/bin/env ruby

require_relative '../lib/players.rb'
require_relative '../lib/game.rb'

game = GameCondition.new
puts 'Welcome to TicTacToe'
puts 'Who is the first player?'
player1 = Players.new(gets.chomp, 'X')
puts "You're welcome" + ' ' + player1.name + ' Your symbol is ' + player1.symbol

puts 'Who is the second player?'
player2 = Players.new(gets.chomp, 'O')
puts "You're welcome" + ' ' + player2.name + ' Your symbol is ' + player2.symbol

rematch = true
while rematch == true

  until game.check_win?
    loop do
      print game.printboard
      print "#{player1.name} choose a position \n\n"
      input1 = gets.chomp
      if GameCondition.convertsymbol(input1) != 'No Valid'
        override = game.position_override?(GameCondition.convertsymbol(input1), 'X')
      else
        puts 'Position no available'
      end
      break if override
    end
    break if game.check_win?

    loop do
      print game.printboard
      puts "#{player2.name} choose a position \n\n"
      input2 = gets.chomp
      if GameCondition.convertsymbol(input2) != 'No Valid'
        override = game.position_override?(GameCondition.convertsymbol(input2), 'O')
      else
        puts 'Invalid character!'
      end
      break if override
    end
  end
  print game.printboard

  var = game.who_is_winning(game.check_win?, player1.name, player2.name)
 unless(var.nil?)
  print var == "player1" ? "\n#{player1.name} (player1) wins" : "\n#{player2.name} (player2) wins"
 else
  print 'Nobody wins'
 end

player1.winner_counter if "player1" == var
player2.winner_counter if "player2" == var

puts "\n\n RESULTS= P1=" + player1.count.to_s + ' vs P2=' + player2.count.to_s + ''
print 'Do you want rematch write Yes'

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
