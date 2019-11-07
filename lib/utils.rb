# frozen_string_literal: true

def validate_chip(piece)
  return piece.upcase if %I[X O].include?(piece.upcase)

  puts "Please, choose a valid piece (X , O) \n"
  validate_chip gets.chomp.to_sym
end

def validate_selection(num, board)
  if num.positive? && num <= 9 && board[num - 1].is_a?(Integer)
    num
  else
    puts "Please, select a valid selection \n\n"
    puts render_board(board)
    validate_selection(gets.chomp.to_i, board)
  end
end

def render_board(board)
  str = ''
  board.size.times do |cell|
    str += board[cell].to_s
    str += ((cell + 1) % 3).zero? && (cell + 1) < 9 ? "\n- + - + -\n" : ' | '
  end
  str[-2] = "\n"
  str
end

def validate_name(name, player)
  return 'Player1' if name.to_s.strip == '' && player == 1

  return 'Player2' if name.to_s.strip == '' && player == 2

  name
end

def start_game?(choice)
  return choice.to_s[0].upcase == 'N' unless choice.to_s.strip == ''

  false
end
