# frozen_string_literal: true

load 'player.rb'

class Board
  def initialize
    @game_board = (1..9).to_a
  end

  def change_cell(player = nil)
    @game_board[(player.cell_selected - 1)] = player.piece if change_error?((player.cell_selected - 1))
    render
  end

  def change_error?(cell_selected = 0)
    true unless @game_board[cell_selected] == 'X' || @game_board[cell_selected] == 'O'
  end

  def render
    @game_board.inspect
  end
end
