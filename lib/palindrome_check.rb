# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.

require 'pry'

#with array and string
# def palindrome_check(my_phrase)
#   return false if my_phrase == nil
#   return true if my_phrase.length <= 1
#
#   array = my_phrase.split(//)
#
#   temp_string = ""
#
#   array.each do |char|
#     if char != " "
#       temp_string += char
#     end
#   end
#
#   return temp_string == temp_string.reverse
# end

#with hashes
def palindrome_check(my_phrase)

  return false if my_phrase == nil
  return true if my_phrase.length <= 1


  temp_hash = {}

  i = 0
  while i < my_phrase.length

    if temp_hash.key?my_phrase[i]
      temp_hash[my_phrase[i]] += 1
    else
      temp_hash[my_phrase[i]] = 1
    end

    i += 1
  end


  odd_char = 0

  temp_hash.each do |key, value|
    if key != " " && value % 2 != 0
      odd_char += 1
    end
  end

  return odd_char > 1 ? false : true
end
