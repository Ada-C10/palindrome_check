# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.

def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  elsif
    my_phrase == "" || my_phrase.length == 1
    return true
  end

  length = my_phrase.length
  i = 0
  j = length - 1
  if length % 2 == 0 #if its even length
    until i == length / 2
      if i == " "
        i += 1
      elsif j == " "
        j -= 1
      end
      if my_phrase[i] == my_phrase[j]
        i += 1
        j -= 1
      else #if they dont match
        return false
      end #end of until
      return true
    end
  else #if its odd length
    while i < j
      if my_phrase[i] == my_phrase[j] #changed this from a while to if
        i += 1
        j -= 1
      elsif my_phrase[i] == " "
        i += 1
      elsif my_phrase[j] == " "
        j -= 1
      else
        return false
      end
    end #end of until loop
    return true
  end #end of if even or odd length
end #end of method

# " pull   up "
#  i = 3
#  j = 4





















# def palindrome_check(my_phrase)
#   if my_phrase == nil
#     return false
#   elsif my_phrase == " " || my_phrase.length == 1
#     return true
#   end
#
#
#   stripped_phrase = strip_phrase(my_phrase)
#
#   if string_reverse(stripped_phrase) == my_phrase
#     return true
#   else
#     return false
#   end
# end
#
#
# #strip the phrase of spaces
# def strip_phrase(my_phrase)
#   stripped_phrase = []
#   length = my_phrase.length
#   i = 0
#   until i == length
#     i += 1
#     if my_phrase[i] != " "
#       stripped_phrase << my_phrase[i]
#     end
#   end
#   return stripped_phrase
# end
#
#
# def string_reverse(stripped_phrase)
#   return if stripped_phrase == nil || stripped_phrase.length < 1
#   i = 0 #first ele
#   j = stripped_phrase.length - 1 #last ele
#   while i < j # until position of first ele meets last, so there is the center element in between
#     temp = stripped_phrase[i] #stores frist ele in temp
#     stripped_phrase[i] = stripped_phrase[j] #sets first ele to the last ele's position
#     stripped_phrase[j] = temp #sets last element to first ele's position
#     i += 1 #increment
#     j -= 1
#   end
#   return stripped_phrase
# end
