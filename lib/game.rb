# frozen_string_literal: true

load 'player.rb'
load 'board.rb'

class Game
  # rubocop:disable Metrics/LineLength
  WINNING_COMBINATIONS ||= [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]].freeze

  # rubocop:enable Metrics/LineLength
  def running?(player = nil)
    player.is_winner
  end

  def detect_winner(player, board)
    current_board = board.render
    WINNING_COMBINATIONS.each do |line_winner|
      a = line_winner[0]
      b = line_winner[1]
      c = line_winner[2]
      next unless (current_board[a] == current_board[b]) && (current_board[b] == current_board[c])

      if current_board[c] == player.piece
        player.is_winner = true
        running? player
      end
    end
    player.name if player.is_winner
  end
end
