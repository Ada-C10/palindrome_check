require 'pry'
# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.

#try regex gsub(/\w+/)
#gsub returns a copy of string with all occurences of patter for the given argument.
# w+ - Matches any word character
def palindrome_check(my_phrase)

  if my_phrase.nil?
    return false
  end

  if my_phrase == ""
    return true
  end

  # Get rid of white space if white space exists
  if my_phrase.gsub!(/\W/, "") != nil
    my_phrase.gsub!(/\W/, "")
  end

  # Compare start/end elements
  i = 0
  j = my_phrase.length - 1
  while i < my_phrase.length / 2

    if my_phrase[i] != my_phrase[j]
      return false
    end
    i += 1
    j -= 1
  end
  return true
end

# Time - Is going through half the array = n / 2. Drop the constant = O(n)
# Space - We are creating space for i, j,
# and a boolean value no matter what the size of n is = O(1)
