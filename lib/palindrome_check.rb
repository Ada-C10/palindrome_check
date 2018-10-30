# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.

###all spaces must be ignored!!!

def palindrome_check(my_phrase)
  # raise NotImplementedError
  return false if my_phrase == nil
  return true if my_phrase.length == 1

  i = 0
  j = my_phrase.length - 1

  # puts palindrome_check("han nah  ")

  while i < j do
    if my_phrase[i] == my_phrase[j]
      i += 1

      until my_phrase[i] != " " do
        i += 1
      end

      j -= 1

      until my_phrase[j] != " " do
        j -= 1
      end

    else
      return false
    end

  end
    return true

  # --> check to see if my_phrase[i] is equal to my-phrase[j] x
  #   --> return false when no match x
  #     --> if [i] or [j] is a space,
  #        increment
  #       --> if i is greater than j, return true x
#   check = ""
#
#   puts check += my_phrase
#
#   return check == string_reverse(my_phrase) ? true : false
end
#
# ##string reverse helper method
# def string_reverse(my_string)
#   # my_string << "not implemented"
#   return nil if my_string == nil
#   return "" if my_string == ""
#
#   i = my_string.length - 1
#   j = 0
#
#   while j < i do
#     temp = my_string[i]
#     my_string[i] = my_string[j]
#     my_string[j] = temp
#     i -= 1
#     j += 1
#   end
#   return my_string
# end



puts palindrome_check(" pull   up ") #=> true
puts palindrome_check("hannah")
puts palindrome_check("leanne")
