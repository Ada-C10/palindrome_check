require 'pry'
# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase.nil?
  phrase_nospaces = my_phrase.delete(' ')
  return phrase_nospaces == reverse_array(phrase_nospaces)
end



def reverse_array(arr)

  unless arr.nil?
    length = arr.length
    new_arr = copy_string(arr)

    (length/2).times do |i|
      tmp = new_arr[length - i - 1]
      new_arr[length - i - 1] = new_arr[i]
      new_arr[i] = tmp
    end
  end

  return new_arr

end

def copy_string(arr)

  new_arr = ""

  arr.length.times do |i|
    new_arr += arr[i]
  end

  return new_arr
end
