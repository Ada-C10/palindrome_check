# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)

  return false if my_phrase == nil

  i = 0
  j = my_phrase.length - 1

  while i < j
    while my_phrase[i] == ' '
      i += 1
    end
    start_p = i

    while my_phrase[j] == ' '
      j -= 1
    end
    end_p = j

    if my_phrase[start_p] != my_phrase[end_p]
      return false
    end

    i += 1
    j -= 1
  end

  return true

  raise NotImplementedError
end


# Time complexity is linear, O(n) where n is the input of my_phrase.

# Space complexity is constant, O(1). The storage of the variables remain the same regardless of the input size. 
