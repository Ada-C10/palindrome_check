# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time Complexity: O(n) where n is the number of characters in input string. 
# Space Complexity: O(1)

def palindrome_check(my_phrase)
  return false if my_phrase == nil
  i = 0
  j = my_phrase.length - 1

  while i < j do
    i += 1 while my_phrase[i] == " " && i < j
    j -= 1 while my_phrase[j] == " " && i < j

    return false if my_phrase[i] != my_phrase[j]
    i += 1
    j -= 1
  end

  return true
end
