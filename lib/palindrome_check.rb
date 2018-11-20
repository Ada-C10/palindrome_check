# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  # check for nil
  unless my_phrase.nil?
    # remove all space from phrase
    my_phrase = remove_spaces(my_phrase)
    # call method to reverse the phrase
     return check_pal(my_phrase)
  end

  return false
    # raise NotImplementedError
end

def remove_spaces(phrase)
  i = 0
  n = phrase.length
  no_space_phrase = ''
  while i < n
    unless phrase[i] == ' '
      no_space_phrase += phrase[i]
    end
    i += 1
  end

  return no_space_phrase
end

def check_pal(phrase)
  i = 0
  last = phrase.length - 1
  flag = true
  while i < last
    if phrase[i] != phrase[last]
      flag = false
    end
    i += 1
    last -= 1
  end
  return flag
end


