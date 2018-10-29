# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if !my_phrase
  return true if my_phrase == ""
  return true if my_phrase.length == 1

  min = 0
  max = my_phrase.length - 1
  check = false



  until min == max
    unless my_phrase[min] == " " || my_phrase[max] == " "
      if my_phrase[min] == my_phrase[max]
        check = true
      end
    end

    min += 1

    if my_phrase[max] == " "
      max -= 1
    end
    # require 'pry'; binding.pry
  end

  return check
end
