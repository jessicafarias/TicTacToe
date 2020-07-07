#!/usr/bin/env ruby
require_relative '../lib/Players.rb'

puts "Welcome to TicTacToe\n\n"
puts 'Who is the first player?'
player1 = gets.chomp

puts "#{player1} your symbol is O \n\n"
puts 'Who is the second player?'
player2 = gets.chomp
puts "#{player2} your symbol is X \n\n"

puts 'a | b | c'
puts 'd | e | f'
puts 'g | h | i'

puts "Player1 choose a position \n\n"
input1 = gets.chomp

puts "Player2 choose a position \n\n"
input = gets.chomp
