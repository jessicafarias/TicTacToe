#!/usr/bin/env ruby
require '../lib/Players.rb'
Players.new("Jessica")


puts "Welcome to TicTacToe\n\n"
puts "Who is the first player?"
player1= gets.chomp
#save the name of the player 1
puts "#{player1} your symbol is O \n\n"
#assign a simbol to player 1
puts "Who is the second player?"
player2 =gets.chomp
#save the name of the player 2
puts "#{player2} your symbol is X \n\n"
#assign a simbol to player 2

puts "a | b | c"
puts "d | e | f"
puts "g | h | i"


puts "Player1 choose a position \n\n"
input1 = gets.chomp
#We override and display the board
#Verify win conditions
puts "Player2 choose a position \n\n"
input = gets.chomp
#We override and display the board
#Verify win conditions

