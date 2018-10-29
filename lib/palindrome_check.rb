# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def string_reverse(my_string)
  # my_string << "not implemented"
  return nil if my_string == nil
  return "" if my_string == ""

  i = my_string.length - 1
  j = 0

  while j < i do
    temp = my_string[i]
    my_string[i] = my_string[j]
    my_string[j] = temp
    i -= 1
    j += 1
  end
  return my_string
end

def palindrome_check(my_phrase)
  # raise NotImplementedError
  return false if my_phrase == nil
  return true if my_phrase.length == 1

  check = ""

  puts check += my_phrase

  return check == string_reverse(my_phrase) ? true : false
end

puts palindrome_check(" pull   up ")
# puts palindrome_check("hannah")
