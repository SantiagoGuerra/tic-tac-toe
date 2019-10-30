# frozen_string_literal: true

# !/usr/bin/env ruby

puts "Hello World\n\n"

# Welcome message
puts "This is Tic tac toe game.\n\n"

# Ask for players' info
print 'Player 1 what is your name? '
player_one = gets.chomp
puts "Thank you: #{player_one}\n\n"
print 'Player 2 what is yours '
player_two = gets.chomp
puts "Thank you: #{player_two}\n\n"
print "#{player_one} do you choose X or O ? "
player_one_chip = gets.chomp
puts "#{player_one} chose: #{player_one_chip}\n\n"
player_two_chip = player_one_chip == 'X' ? 'O' : 'X'
puts "#{player_two} yours are: #{player_two_chip}\n\n"

# Some instructions
puts "Whoever gets a straight line wins. Lets start!\n\n"

# Game play
puts "#{player_one} choose one number"
puts '1|2|3'
puts '-+-+-'
puts '4|5|6'
puts '-+-+-'
puts '7|8|9'
player_1_choose = gets.chomp
puts "you chose: #{player_1_choose}"
puts "#{player_two} your turn"
puts '1|2|3'
puts '-+-+-'
puts '4|X|6'
puts '-+-+-'
puts '7|8|9'
player_2_choose = gets.chomp
puts "you chose: #{player_2_choose}"
puts "#{player_one} choose one number"
puts '1|2|3'
puts '-+-+-'
puts '4|X|6'
puts '-+-+-'
puts "7|8|O\n\n"

puts "And so on and so on\n\n"

# Win messages
puts "#{player_one} wins"
puts "#{player_two} wins"
puts 'Nobody wins'
