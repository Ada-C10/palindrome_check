# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase.nil?

  return true if my_phrase.length <= 1

  # Push each character to empty string if not whitespace
  string = ""

  my_phrase.length.times do |i|
    if my_phrase[i] != " "
      string << my_phrase[i]
    end
  end

  # Compare string indices in place, starting with first and last, moving inwards
  i = 0
  j = string.length - 1

  while i < string.length
    if string[i] == string[j]
      i += 1
      j -= 1
    else
      return false
    end
  end

  return true
end
