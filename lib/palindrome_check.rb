require 'pry'
# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  # check for nil or empty string
  if my_phrase == nil
    return false
  elsif my_phrase == ""
    return true
  end

  #compare ends of string
  beg_index = 0
  end_index = my_phrase.length - 1
  while beg_index < end_index
    
    while my_phrase[beg_index] == " "
      beg_index += 1
    end

    while my_phrase[end_index] == " "
      end_index -= 1
    end

    if my_phrase[beg_index] != my_phrase[end_index]
      return false
    end

    beg_index += 1
    end_index -= 1
  end

  return true
  # raise NotImplementedError
end
