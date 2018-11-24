# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  # check for nil
  unless my_phrase.nil?
    i = 0
    last = my_phrase.length - 1
    while i < last # O(n/2)
      # iterate from head of string until non whitespace char
      until my_phrase[i] != ' ' # O(n/2)
        i += 1
      end

      # iterate from tail of string until non whitespace char
      until my_phrase[last] != ' ' # O(n/2)
        last -= 1
      end


      # once two non-whitespace characters are found compare them
      if my_phrase[i] != my_phrase[last]
        return false
      else
        i += 1
        last -= 1
      end
    end

    return true
  end

  return false
end

# For time complexity I think the overall number of operations is dependent on the
# length of the string/phrase (n) At most 1/2 of the length of the string
# operations will be necessary to iterate over (the head and tail
# increment/decrement in unison)  O(n)
# Using this method no additional space is required beyond the
# head and tail incrementors as all non-whitespace characters are checked in
# place and only a boolean is returned O(n)