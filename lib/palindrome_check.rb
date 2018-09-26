# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  end

  low_index = 0
  high_index = (my_phrase.length - 1)

  while low_index <= high_index
    while my_phrase[low_index] == " "
      low_index += 1
    end

    start_letter = my_phrase[low_index]

    while my_phrase[high_index] == " "
      high_index -= 1
    end

    end_letter = my_phrase[high_index]


    if start_letter != end_letter
      return false
    end

    low_index += 1
    high_index -= 1
  end
  return true
end
