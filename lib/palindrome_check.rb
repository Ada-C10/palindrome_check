# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase == nil
  return true if my_phrase.length <= 1

  my_phrase.delete!(' ')
  input = ""
  input += my_phrase

  low = 0
  high = my_phrase.length-1

  while low < high
    x = my_phrase[low]
    my_phrase[low] = my_phrase[high]
    my_phrase[high] = x
    low += 1
    high -= 1
  end

  return input == my_phrase
end
