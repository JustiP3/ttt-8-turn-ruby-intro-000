def turn
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  valid = false
  
  while valid == false
    puts "Where would you like to move?"
    input = gets.strip
    index = input_to_index(input)
    valid = valid_move(board, index)
      if (valid == true)
        move(board, index)
      end
  end
 
end

def display_board(array)
puts "#{array[0]}|#{array[1]}|#{array[2]}"
puts "-----------"
puts "#{array[3]}|#{array[4]}|#{array[5]}"
puts "-----------"
puts "#{array[6]}|#{array[7]}|#{array[8]}"
end

def valid_move?(array, index)
x = position_taken?(array, index)
if (x == false && x < 9 && x > -1)
  return true
else
  return false
end
end

def move(board, index, value = "X")
board[index] = value
end

def position_taken?(array, index)
if (array[index] == " " || array[index] == "" || array[index] == nil)
  return false
elsif (array[index] == "X" || array [index] == "O")
  return true
end

end

def string_to_int(word)
x = word.to_i - 1
end
