# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)

  if my_phrase == nil
    return false
  end

  unless my_phrase.empty? || my_phrase.length == 1

    index = 0
    last = my_phrase.length - 1

    while index <= last

      while my_phrase[index] == ' '
        index += 1
      end

      while my_phrase[last] == ' '
        last -= 1
      end

      if my_phrase[index] != my_phrase[last]
        return false
      end
      index += 1
      last -= 1
    end

  else
    return true
  end

end
