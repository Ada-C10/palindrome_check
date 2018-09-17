# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase == nil
  i = 0
  j = my_phrase.length - 1

  while i < j
    i += 1 while my_phrase[i] == " "
    j -= 1 while my_phrase[j] == " "
    return false if my_phrase[i] != my_phrase[j]
    i += 1
    j -= 1
  end

  return true
end
