# frozen_string_literal: true

load 'player.rb'

class Game
  # rubocop:disable Metrics/LineLength
  WINNING_COMBINATIONS ||= [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]].freeze

  # rubocop:enable Metrics/LineLength
  def running?(player = nil)
    player.is_winner
  end
end
