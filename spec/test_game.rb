# spec/test_board.rb

# frozen_string_literal: true

require_relative '../lib/game.rb'

RSpec.describe Game do
  let(:player1) { Player.new('Player1') }
  let(:player1_name) { player1.name }
  let(:player2) { Player.new('Player2') }
  let(:board) { Board.new }
  let(:game) { Game.new(player1, player2) }
  describe '#board' do
    it 'returns an array' do
      expect(game.board.class).to eq(board.class)
    end

    it 'if receives arguments will raise an error' do
      expect { game.board(1) }.to raise_error(ArgumentError)
    end
  end

  describe '#current_player' do
    it 'returns the current Player' do
      expect(game.current_player).to eq(player1)
    end

    it 'if receives arguments will raise an error' do
      expect { game.current_player(player2) }.to raise_error(ArgumentError)
    end
  end

  describe '#initialize' do
    it 'returns a Game' do
      expect(Game.new(player1, player2).class).to eq(Game)
    end

    it 'returns an ArgumentError if the Game is initialized with no arguments or more than 2 arguments' do
      expect { Game.new }.to raise_error(ArgumentError)
    end
  end

  describe '#not_a_tie?' do
    it 'returns true if 9 or more turns have been played on the game ' do
      expect(game.not_a_tie?).to eq(false)
    end

    it 'if receives arguments will raise an error' do
      expect { game.not_a_tie?(true) }.to raise_error(ArgumentError)
    end
  end

  describe '#running?' do
    it 'returns false when the current player hasn\'t win the game or if the game is not a tie ' do
      expect(game.running?).to eq(false)
    end

    it 'returns true if the current player won or if the game is a tie ' do
      game.current_player.is_winner = true
      expect(game.running?).to eq(true)
    end

    it 'if receives arguments will raise an error' do
      expect { game.running?(true) }.to raise_error(ArgumentError)
    end
  end

  describe '#detect_winner' do
    it 'raises a NoMethodError if is used outside the class because it is private' do
      expect { game.detect_winner }.to raise_error(NoMethodError)
    end
  end

  describe '#next_to_play' do
    it 'changes the current_player and retunrs that player' do
      expect(game.next_to_play).to eq(player2)
    end

    it 'if receives arguments will raise an error' do
      expect { game.next_to_play(player1) }.to raise_error(ArgumentError)
    end
  end

  describe '#play' do
    it 'changes the current_player if the current_player hasn\'t won ' do
      game.current_player.piece = :X
      expect(game.play(1)).to eq(player2)
    end

    it 'doesn\'t change the current_player if the current_player won ' do
      game.current_player.piece = :X
      game.play(1)
      game.current_player.piece = :O
      game.play(2)
      game.play(4)
      game.play(5)
      expect(game.play(7)).to eq(player1)
    end

    it 'if receives no arguments or more than one argument it will raise an error' do
      expect { game.play }.to raise_error(ArgumentError)
    end
  end
end
