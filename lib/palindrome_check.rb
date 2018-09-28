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
  end

  return true

end


# A method to reverse a string in place.
def string_reverse(my_string)
  unless my_string == nil || my_string.empty? || my_string.length == 1

    index = 0
    last = my_string.length - 1

    while index <= last
      temp = my_string[index]
      my_string[index] = my_string[last]
      my_string[last] = temp
      index += 1
      last -= 1
    end
  end
end
