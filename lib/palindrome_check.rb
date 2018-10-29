# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.

require 'pry'

def palindrome_check(my_phrase)
  return false if my_phrase == nil
  return true if (my_phrase.length == 1 || my_phrase == "")
  return my_phrase == my_phrase.reverse
end
