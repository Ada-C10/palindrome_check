# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase.nil?

  current_index = 0
  back_index = my_phrase.length - 1
  mismatch = 0

  while current_index < my_phrase.length

    if my_phrase[current_index] == " "
      current_index += 1
    elsif  my_phrase[back_index] == " "
      back_index -= 1
    end

    if my_phrase[current_index] != my_phrase[back_index] &&
    # my_phrase[current_index] != " " &&
    # my_phrase[back_index] != " "
      mismatch += 1
    end

    current_index += 1
    back_index -= 1
  end

  if mismatch > 1
    return false
  elsif mismatch == 0
    return true
  end

end
