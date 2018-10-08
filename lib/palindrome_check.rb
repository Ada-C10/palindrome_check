require 'pry'
# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase.class != String

  my_phrase = my_phrase.delete(" ")
  my_phrase_dup = my_phrase.dup
  return my_phrase == string_reverse(my_phrase_dup)
end


def string_reverse(my_string)
  return my_string if my_string.class == NilClass
  i = 0
  j = my_string.length - 1
  n = 0
  while i < j
    n = my_string[i]
    my_string[i] = my_string[j]
    my_string[j] = n
    j -= 1
    i += 1
  end
  return my_string
end
