
# frozen_string_literal: true

# !/usr/bin/env ruby
require_relative '../lib/player.rb'
require_relative '../lib/board.rb'
require_relative '../lib/game.rb'


puts "Hello World\n\n"

# Welcome message
puts "This is Tic tac toe game.\n\n"

# Ask for players' info
print 'Player 1 what is your name? '
player_one_name = gets.chomp
player_one = Player.new(player_one_name)
puts "Thank you: #{player_one.name}\n\n"



print 'Player 2 what is yours '
player_two_name = gets.chomp
player_two = Player.new(player_two_name)
puts "Thank you: #{player_two.name}\n\n"


print "#{player_one.name} do you choose X or O ? "
player_one_chip = gets.chomp
player_one.piece = player_one_chip
puts "#{player_one} chose: #{player_one_chip}\n\n"


player_two_chip = player_one_chip == 'X' ? 'O' : 'X'
puts "#{player_two} yours are: #{player_two_chip}\n\n"
player_two.piece = player_two_chip

# Some instructions
puts "Whoever gets a straight line wins. Lets start!\n\n"

# Game play

game = Game.new(player_one, player_two, Board.new)
loop do
  cells = game.board.render

  puts "#{game.current_player.name} choose a number available on the board."

  puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
  puts " - + - + - "
  puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
  puts " - + - + - "
  puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "

  game.play(gets.chomp.to_i)

  break if game.running?
end


puts "Congrulations #{game.current_player.name}! you won." if game.current_player.is_winner

puts "Nobody wins" unless game.not_a_tie?
