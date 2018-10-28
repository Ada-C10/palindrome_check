# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  #raise NotImplementedError
  if my_phrase == ""
    return true
  elsif my_phrase == nil
    return false
  end

  head = 0
  tail = my_phrase.length - 1

  while tail >= head
    if my_phrase[head] == " "
      head += 1
    elsif my_phrase[tail] == " "
      tail -= 1
    elsif my_phrase[head] != my_phrase[tail]
      return false
    else
      head += 1
      tail -= 1

    end
  end
  return true

end
