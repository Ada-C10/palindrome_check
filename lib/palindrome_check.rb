# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  end
  y = (my_phrase.length - 1)
  x = 0
  palindrome = true
  until x > y do
    until my_phrase[x] =~ /\S/ do
      x += 1
    end
    until my_phrase[y] =~ /\S/ do
      y -= 1
    end
    if my_phrase[x] != my_phrase[y]
      palindrome = false
    end
    x += 1
    y -= 1
  end
  return palindrome
end
