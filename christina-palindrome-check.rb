def double_word(my_phrase)
new_string = (my_phrase)+(my_phrase)
return new_string
end





def palindrome_check(my_phrase)
  if double_word(my_phrase).include?(my_phrase)
    return true
  else
    return false
  end

end
