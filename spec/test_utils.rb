# spec/test_player.rb

# frozen_string_literal: true

require_relative '../lib/utils.rb'

RSpec.describe Utils do
  include Utils
  let(:default_board) { [1, 2, 3, 4, 5, 6, 7, 8, 9] }
  let(:string_board) { "1 | 2 | 3\n- + - + -\n4 | 5 | 6\n- + - + -\n7 | 8 | 9 \n " }
  describe '#validate_chip' do
    it 'validates a argument, if it receives a X or O' do
      expect(Utils.validate_chip(:X)).to eq(:X)
    end

    it 'validates a argument, if it receives an element diferent to X or O, it will call it itself' do
      expect { Utils.validate_chip('s') }.to raise_error(NoMethodError)
    end
  end

  describe '#validate_selection' do
    it 'validates a selection for a cell, it will return the value if the parameter meets the conditions' do
      expect(Utils.validate_selection(1, default_board)).to eq(1)
    end

    it 'if it receives an element that does not meet the conditions, it will raise an error' do
      expect { Utils.validate_selection(122_121_212, default_board) }.to raise_error(NoMethodError)
    end

    it 'if it receives two arguments, if only an argument is given will raise an error' do
      expect { Utils.validate_selection(1) }.to raise_error(ArgumentError)
    end
  end

  describe '#render_board' do
    it 'receives an array and will return a string' do
      expect(Utils.render_board(default_board).class).to eq(String)
    end

    it 'receives an array and will return a string to create a board' do
      expect(Utils.render_board(default_board)).to eq(string_board)
    end

    it 'only receives an array as an argument. if more arguments are given will raise an error' do
      expect { Utils.render_board(default_board, 1, 2, 3) }.to raise_error(ArgumentError)
    end
  end

  describe '#validate_name' do
    it 'receives a string and a number as arguments and it will return a string' do
      expect(Utils.validate_name('name', 1).class).to eq(String)
    end

    it 'returns a string (Player1 or Player2) if the first argument is empty' do
      expect(Utils.validate_name('', 1)).to eq('Player1')
    end

    it 'only receives two arguments. if more arguments are given will raise an error' do
      expect { Utils.validate_name('', 1, 2) }.to raise_error(ArgumentError)
    end

    it 'only receives two arguments. if only one argument is given will raise an error' do
      expect { Utils.validate_name('') }.to raise_error(ArgumentError)
    end
  end

  describe '#start_game?' do
    puts true.class
    it 'receives a string as argument and it will return a boolean' do
      expect(Utils.start_game?('N').class).to eq(TrueClass)
    end

    it 'returns a `false` boolean if the first argument is empty' do
      expect(Utils.start_game?('')).to eq(false)
    end

    it 'only receives one argument. if more arguments are given will raise an error' do
      expect { Utils.start_game?('', 1, 2) }.to raise_error(ArgumentError)
    end

    it 'only receives one argument. if argument is not given will raise an error' do
      expect { Utils.validate_name }.to raise_error(ArgumentError)
    end
  end
end
