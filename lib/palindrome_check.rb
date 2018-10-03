# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.

#The space complexity is O(1) because no space is alocated to create a new object
#The time complexity is O(n) because the while loop needs to walk through each item in the string n times
# (or technically O(n/2) times because two characters are checked with each loop through, but the 2 is dropped) 
def palindrome_check(my_phrase)
  return false if my_phrase == nil
  # return true if my_phrase == ""

  i = 0
  j = my_phrase.length - 1
  while i < j
    until my_phrase[i] != " "
      i += 1
    end
    until my_phrase[j] != " "
      j -= 1
    end
    return false if my_phrase[i] != my_phrase[j]
    i += 1
    j -= 1
  end
  return true

end
