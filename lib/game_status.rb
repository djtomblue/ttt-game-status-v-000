# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
i = 0
  while i < 8
      j = 0
      if (board[WIN_COMBINATIONS[i][j]] == "X" && board[WIN_COMBINATIONS[i][j+1]] == "X" && board[WIN_COMBINATIONS[i][j+2]] == "X") ||
          (board[WIN_COMBINATIONS[i][j]] == "O" && board[WIN_COMBINATIONS[i][j+1]] == "O" && board[WIN_COMBINATIONS[i][j+2]] == "O")

        return WIN_COMBINATIONS[i]
      end
      i += 1
  end
  return false
end

def full?(board)
  board.all? { |position| position != " " && position != nil }
end

def draw?(board)
  if (full?(board) == true) && (won?(board) == false)
    return true
  end
end

def over?(board)
  if draw?(board)
    true

  elsif won?(board)
    true

  end
end


def winner(board)
  if won?(board) != false
    winner = won?(board)
      if board[winner[0]] == "X"
        return "X"
      elsif board[winner[0]] == "O"
        return "O"
      end
  end
end
#board = ["X", "O", "X", "O", "X", "O", "X", "O", "X"]
