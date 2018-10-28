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
  while i < j
    if my_phrase[i] == my_phrase[j]
      i += 1
      j -= 1
    elsif my_phrase[i] == " "
      i += 1
    elsif my_phrase[j] == " "
      j -= 1
    else
      return false
    end
  end
  return true
end

# If my code keeps running what is the worst case scenario for this code?
# Time complexity: O(n) where n is the length of the input(my_phrase). Because in
# the worst case the algorithm would run n divided by 2 times.
# Space complexity: O(1) Regardless of the length of the input, the code would take up constant space 
# (aka the same amount of space regardless of input length)
