# frozen_string_literal: true

class Player
  attr_accessor :cell_selected, :is_winner
  attr_reader :piece, :name
  def initialize(name, cell_selected = nil)
    @cell_selected = cell_selected
    @name ||= name
    @is_winner = false
    @piece = nil
  end

  # rubocop:disable Naming/MemoizedInstanceVariableName
  def piece=(piece)
    @piece ||= piece
  end
  # rubocop:enable Naming/MemoizedInstanceVariableName
end
