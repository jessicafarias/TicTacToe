#!/usr/bin/env ruby

require_relative '../lib/players.rb'
require_relative '../lib/game.rb'

game = GameCondition.new()

puts 'Welcome to TicTacToe\n'
puts 'Who is the first player?'
player1 = Players.new(gets.chomp, 'X')

player1.player_welcome
puts 'Who is the second player?'
player2 = Players.new(gets.chomp, 0)
player2.player_welcome


puts 'a | b | c'
puts 'd | e | f'
puts 'g | h | i'


puts "Player1 choose a position \n\n"
input1 = gets.chomp
if(GameCondition.convertsymbol(input1)=="No Valid")
    puts "Hey, this is not ok :("
else
    game.position_override(GameCondition.convertsymbol(input1), "X") 
end

puts "Player2 choose a position \n\n"
input2 = gets.chomp

if(GameCondition.convertsymbol(input2)=="No Valid")
    puts "Hey, this is not ok :("
else
    game.position_override(GameCondition.convertsymbol(input2), "O")
end
puts "BELOW"
game
p game.checkWin
p game.array
