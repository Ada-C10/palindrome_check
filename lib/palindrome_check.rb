# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time Complexity: O(n)
# Space Complexity: O(n)

def string_reverse(my_string)
  i = 0
  j = my_string.length - 1

  while i < j
    placeholder = my_string[i]
    my_string[i] = my_string[j]
    my_string[j] = placeholder
    i += 1
    j -= 1
  end
  return my_string
end

def palindrome_check(my_phrase)
  return false if my_phrase.nil?

  my_phrase_original= []
  my_phrase_reversed = []

  i = 0
  while i < my_phrase.length
    if my_phrase[i] != " "
      my_phrase_original << my_phrase[i]
      my_phrase_reversed << my_phrase[i]
    end
    i += 1
  end

  string_reverse(my_phrase_reversed)

  i = 0
  while i < my_phrase_original.length
    return false  if my_phrase_original[i] != my_phrase_reversed[i]
    i += 1
  end

  return true

end
