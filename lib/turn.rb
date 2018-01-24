def display_board(board)
  print " #{board[0]} | #{board[1]} | #{board[2]} \n"
  print "-----------\n"
  print " #{board[3]} | #{board[4]} | #{board[5]} \n"
  print "-----------\n"
  print " #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def valid_move?(board, index)
  index = index.to_i
  if index.between?(0,8) && !(position_taken?(board, index))
    true
  end
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
