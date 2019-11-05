# frozen_string_literal: true

class Board
  def initialize
    @game_board = (1..9).to_a
  end

  def change_cell(cell_selected = nil, piece = nil)
    @game_board[(cell_selected - 1)] = piece if change_error?((cell_selected - 1))
    render
  end

  def change_error?(cell_selected = 0)
    true unless @game_board[cell_selected] == 'X' || @game_board[cell_selected] == 'O'
  end

  def render
    @game_board
  end
end
