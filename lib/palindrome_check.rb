# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time: O(n)
# Space: O(1)
require 'pry'
def palindrome_check(my_phrase)
  if my_phrase == nil # must be the first thing
    return false
  end

  # recursive way

  # return true if (my_phrase.length == 1 || my_phrase.length == 0)
  # if my_phrase[0] != my_phrase[my_phrase.length - 1]
  #   return false
  # else
  #   return palindrome_check(my_phrase[1..my_phrase.length - 2])
  # end


  if my_phrase.length == 0 || my_phrase.length == 1
    return true
  end


  i = 0
  j = my_phrase.length - 1
  while i < my_phrase.length
    if my_phrase[i] == " "
      i += 1
    end

    if my_phrase[j] == " "
      j -= 1
    end

    if my_phrase[i] != my_phrase[j]
      return false
    end
    i += 1
    j -= 1
  end
  return true
end
