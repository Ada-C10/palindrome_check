def palindrome_check(my_string)

  return false if my_string == nil

  while my_string != nil
    i = 0
    j = (my_string.length - 1)
    until j < i
      if my_string[i] == my_string[j]
        i += 1
        j -= 1
      elsif my_string[i] == " "
        i += 1
      elsif my_string[j] == " "
        j -= 1
      else
        return false
      end
    end
    return true
  end



end
