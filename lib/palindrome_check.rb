# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  # raise NotImplementedError
  return false if my_phrase == nil
  return true if my_phrase == ""

  i = 0 # first index of my_phrase
  j = my_phrase.length - 1 # last index of my_phrase

  while i < j
    until my_phrase[i] != " "
      i += 1
    end

    until my_phrase[j] != " "
      j -= 1
    end

    return false unless my_phrase[i] == my_phrase[j]

    i += 1
    j -= 1

  end
  return true
end
