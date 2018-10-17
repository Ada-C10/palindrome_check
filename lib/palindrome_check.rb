# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
require 'pry'
def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  end
  i = 0
  j = my_phrase.length - 1
  while i < j do
    until my_phrase[i] != " "
      i +=1
    end
    until my_phrase[j] != " "
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
