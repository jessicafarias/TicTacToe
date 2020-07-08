#!/usr/bin/env ruby

require_relative '../lib/players.rb'
require_relative '../lib/game.rb'

game = GameCondition.new()
puts 'Welcome to TicTacToe\n'
puts 'Who is the first player?'
player1 = Players.new(gets.chomp, "X")
player1.player_welcome

puts 'Who is the second player?'
player2 = Players.new(gets.chomp, "O")
player2.player_welcome
loop do
    loop do 
        game.printboard
        puts "#{player1.name} choose a position \n\n"
        input1 = gets.chomp
        game.position_override(GameCondition.convertsymbol(input1), "X") if GameCondition.convertsymbol(input1)!="No Valid"
        break unless GameCondition.convertsymbol(input1)=="No Valid"
    end
    
    break if game.checkWin

    loop do 
        game.printboard
        puts "#{player2.name} choose a position \n\n"
        input2 = gets.chomp
        game.position_override(GameCondition.convertsymbol(input2), "O") unless GameCondition.convertsymbol(input2)=="No Valid"
        break unless GameCondition.convertsymbol(input2)=="No Valid"
    end
    p game.checkWin

    break if game.checkWin
end
game.printboard

var= game.who_is_winning(game.checkWin, player1.name, player2.name)
player1.winner_counter if (player1.name==var)
player2.winner_counter if (player2.name==var)

