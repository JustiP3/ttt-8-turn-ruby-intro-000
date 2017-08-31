def turn()
  ask for input
  get input
  convert string to int
  if move is valid
    make move
    show board
  else
    ask for input again
  end
end

def is_valid_move?(array, index)
x = position_taken?(array, index)
if (x == false && x < 9 && x > -1)
  return true
else
  return false
end

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
