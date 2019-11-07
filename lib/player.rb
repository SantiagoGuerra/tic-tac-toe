# frozen_string_literal: true

class Player
  attr_accessor :cell_selected
  attr_reader :piece, :name, :is_winner
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

  def is_winner=(bool)
    @is_winner ||= bool
  end
  # rubocop:enable Naming/MemoizedInstanceVariableName
end
