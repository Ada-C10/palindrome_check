require 'pry'

# Returns true if the input positive integer word forms a palindrome. Returns false otherwise.


def palindrome_check(word)
  i = 0

  if word == nil
    return false
  end

  length = (word.length) - 1

  while length >= 0
    if word[length] == " "
      word[length] = ""
    end
    length = length - 1
  end

  length = (word.length) - 1

  while i <= length
    if word[i] == word[length]
      i = i + 1
      length = length - 1
    elsif word[i] != word[length]
      return false
    end
  end
  return true
end
