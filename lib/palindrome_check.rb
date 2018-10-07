# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)

  if my_phrase == nil
    return false
  elsif my_phrase.length == 0
    return true
  elsif my_phrase.length == 1
    return true
  else
    x = 0
    y = my_phrase.length - 1
    start = my_phrase[x]
    ending = my_phrase[y]

    until x > y
      if start == ending
        x = x + 1
        start = my_phrase[x]
        y = y - 1
        ending = my_phrase[y]
      else
        return false
      end
    end
    return true
  end

  # raise NotImplementedError
end

# test = palindrome_check("madam madam")
# puts "#{test}"
