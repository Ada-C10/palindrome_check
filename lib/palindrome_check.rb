# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase == nil

  while my_phrase != nil
    i = 0
    n = (my_phrase.length - 1)
    until n < i
      if my_phrase[i] == my_phrase[n]
        i += 1
        n -= 1
      elsif my_phrase[i] == " "
        i += 1
      elsif my_phrase[n] == " "
        n-= 1
      else
        return false
      end
    end
    return true
  end
  s

end
