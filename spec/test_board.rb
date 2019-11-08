# spec/test_player.rb

# frozen_string_literal: true

require_relative '../lib/board.rb'

RSpec.describe Board do
  let(:board) { Board.new }
  let(:arr_default) { [1, 2, 3, 4, 5, 6, 7, 8, 9] }
  let(:arr_changed) { [:X, 2, 3, 4, 5, 6, 7, 8, 9] }
  describe '#render' do
    it 'returns an array' do
      expect(board.render).to eq(arr_default)
    end

    it 'if receives arguments will raise an error' do
      expect { board.render(1) }.to raise_error(ArgumentError)
    end
  end

  describe '#change_error?' do
    it 'is a private method' do
      expect { board.change_error? 1 }.to raise_error(NoMethodError)
    end
  end

  describe '#change_cell' do
    it 'receives two arguments (Number, Symbol), it will return a new array' do
      expect(board.change_cell(1, :X).class).to eq(Array)
    end

    it 'returns a new array with different elements' do
      expect(board.change_cell(1, :X)).to eq(arr_changed)
    end

    it 'if arguments are not given, it will return an error' do
      expect { board.change_cell }.to raise_error(NoMethodError)
    end

    it 'will return the same array if the piece is in the same position' do
      expect(board.change_cell(1, :X)).to eq(arr_changed)
    end
  end
end
