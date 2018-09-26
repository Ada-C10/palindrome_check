# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  end

  index = 0
  first_index = 0
  last_index = my_phrase.length - 1
  check = true

  while index <= my_phrase.length/2
    # Accounts for spaces for first half of string
    while my_phrase[first_index + index] == " "
      first_index += 1
    end

    #Accounts for spaces for second half of string
    while my_phrase[last_index - index] == " "
      last_index -= 1
    end

    # palindrome check
    if my_phrase[first_index + index] != my_phrase[last_index - index]
      check = false
    end
    index += 1
  end
  return check
end
