# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.

def get_ride_of_space(my_phrase)
  edited_phrase = ""
  i = 0
  while i < my_phrase.length
    temp = my_phrase[i]
    if temp != " "
      edited_phrase += temp
    end
    i += 1
  end
  return edited_phrase
end


def reverse_phrase(my_phrase)
  if my_phrase == nil
    return my_phrase
  end

  edited_phrase = get_ride_of_space(my_phrase)

  i = 0
  j = edited_phrase.length - 1

  while i < j
    temp = edited_phrase[i]
    edited_phrase[i] = edited_phrase[j]
    edited_phrase[j] = temp

    i += 1
    j -= 1
  end
  return edited_phrase
end

def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  end

  if get_ride_of_space(my_phrase) == reverse_phrase(my_phrase)
    return true
  else
    return false
  end
end
