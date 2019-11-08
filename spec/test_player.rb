# spec/test_player.rb

# frozen_string_literal: true

require_relative '../lib/player.rb'

RSpec.describe Player do
  let(:player) { Player.new('Player1') }
  describe '#cell_selected' do
    it 'returns the cell_selected value' do
      expect(player.cell_selected).to eq(nil)
    end

    it 'changes the cell_selected value' do
      expect(player.cell_selected = 1).to eq(1)
    end
  end

  describe '#is_winner' do
    it 'returns true if the player is a winer otherwise will be false' do
      expect(player.is_winner).to eq(false)
    end

    it 'changes the is_winner value' do
      expect(player.is_winner = true).to eq(true)
    end
  end

  describe '#piece' do
    it 'returns the piece value' do
      expect(player.piece).to eq(nil)
    end

    it 'changes the piece value' do
      expect(player.piece = :O).to eq(:O)
    end
  end

  describe '#name' do
    it 'returns the piece name' do
      expect(player.name).to eq('Player1')
    end

    it 'raises a NoMethodError when trying to modify the name' do
      expect { player.name = 'Player2' }.to raise_error(NoMethodError)
    end
  end

  describe '#initialize' do
    it 'returns a Player' do
      expect(Player.new('Player3').class).to eq(Player)
    end

    it 'returns an ArgumentError if the Player is initialized with no arguments or more than 1 arguments' do
      expect { Player.new }.to raise_error(ArgumentError)
    end
  end
end
