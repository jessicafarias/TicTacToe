#!/usr/bin/env ruby

require_relative '../lib/players.rb'

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

puts "Player2 choose a position \n\n"
input2 = gets.chomp