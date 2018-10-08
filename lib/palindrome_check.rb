# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)

  # delete all whitespace
  # return false if it's not a string
  unless my_phrase.is_a? String
    return false
  end

stripped_phrase = ""
  my_phrase.length.times do |i|
    unless my_phrase[i] == " "
      stripped_phrase << my_phrase[i]
    end
  end

  i = 0
  j = stripped_phrase.length - 1

  while i <= j
    unless stripped_phrase[i] == stripped_phrase[j]
      return false
    end
    i += 1
    j -= 1
  end

  return true

end
