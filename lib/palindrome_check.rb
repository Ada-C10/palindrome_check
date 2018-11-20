# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if !my_phrase
  return true if my_phrase == ""
  return true if my_phrase.length == 1

  min = 0
  max = my_phrase.length - 1
  check = false

# first check if string is empty or not
# if not empty then compare the pair
# if at least one of them is empty then move onto next index until it is not empty
# then compare
# if match continue moving up the index until min > max
# if at least one pair that does not match then return false for good


  until min > max
    # unless my_phrase[min] == " " || my_phrase[max] == " "
    until my_phrase[min] != " "
      min += 1
    end

    until my_phrase[max] != " "
      max -= 1
    end

    if my_phrase[min] == my_phrase[max]
      check = true
    else
      return false
    end
    # end

    min += 1
    max -= 1
    # require 'pry'; binding.pry
  end

  return check
end
