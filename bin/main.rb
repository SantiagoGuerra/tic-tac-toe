# frozen_string_literal: true

# !/usr/bin/env ruby
require_relative '../lib/player.rb'
require_relative '../lib/board.rb'
require_relative '../lib/game.rb'
require_relative '../lib/utils.rb'

# Welcome message
puts "This is Tic tac toe game.\n\n"

# Ask for players' info
print 'Player 1 - What is your name?: '
player_one_name = Utils.validate_name(gets.chomp, 1)
player_one = Player.new(player_one_name)
puts "Thank you: #{player_one.name}\n\n"

print 'Player 2 - What is yours?: '
player_two_name = Utils.validate_name(gets.chomp, 2)
player_two = Player.new(player_two_name)
puts "Thank you: #{player_two.name}\n\n"

print "#{player_one.name} do you choose X or O ?: "

player_one.piece = Utils.validate_chip(gets.chomp.to_sym)

puts "#{player_one.name} chose: #{player_one.piece}\n\n"

player_two.piece = player_one.piece == :X ? :O : :X

puts "#{player_two.name}, you'll use #{player_two.piece} \n\n\n"

puts "- - - - - - - - - - - - - - - - - - - - - - \n\n"

# Some instructions
puts "Whoever gets a straight line wins. Lets start!\n\n"

# Game play
new_game = true
loop do
  game = Game.new(player_one, player_two)
  game.current_player.is_winner = false
  puts "#{game.current_player.name} you want to start the game? (N for No)"
  game.next_to_play if Utils.start_game?(gets.chomp)

  loop do
    puts Utils.render_board(game.board.render)

    print "#{game.current_player.name} choose a number available on the board: "
    selected_num = Utils.validate_selection(gets.chomp.to_i, game.board.render)

    game.play(selected_num)

    break if game.running?
  end
  puts Utils.render_board(game.board.render)

  puts "Congratulations #{game.current_player.name}! you won.\n\n" if game.current_player.is_winner

  puts "Nobody win\n\n" if game.not_a_tie?

  print 'Do you want to play again? (N for No) '
  new_game = !Utils.start_game?(gets.chomp)
  break unless new_game

  puts "\n\n"
end

print "\n\nTic tac toe game: see you for a next match!\n\n"
