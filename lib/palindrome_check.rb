# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)

  if my_phrase == nil
    return false
  elsif my_phrase.length == 0
    return true
  elsif my_phrase.length == 1
    return true
  else
    x = find_start_index(my_phrase, 0)
    y = find_ending_index(my_phrase, my_phrase.length - 1)
    start = my_phrase[x]
    ending = my_phrase[y]

    until x > y
      if start == ending
        x = find_start_index(my_phrase, x + 1)
        start = my_phrase[x]
        y = find_ending_index(my_phrase, y - 1)
        ending = my_phrase[y]
      else
        return false
      end
    end
    return true
  end

  # raise NotImplementedError
end

def find_start_index(my_phrase, index_val)
  new_index = index_val

  if my_phrase[new_index] == " "
    until my_phrase[new_index] != " "
      new_index += 1
    end
  end
  return new_index
end

def find_ending_index(my_phrase, index_val)
  new_index = index_val

  if my_phrase[new_index] == " "
    until my_phrase[new_index] != " "
      new_index -= 1
    end
  end
  return new_index
end
test = palindrome_check("   ma d   a m")
puts "#{test}"
