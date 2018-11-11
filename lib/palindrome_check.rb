# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)

  return false if my_phrase == nil

  my_phrase = my_phrase.delete(" ")

  index = 0
  half_index = my_phrase.length / 2

    until index == half_index

      if my_phrase[index] != my_phrase[- (index +1)]
        return false
      else
        index += 1
      end
    end

  #single character, empty string,
  return true
end
