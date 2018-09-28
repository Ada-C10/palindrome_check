def palindrome_check(my_phrase)
  if my_phrase.nil?
    return false
  end

  start_counter = 0
  end_counter = my_phrase.length - 1

  until start_counter >= end_counter
    while my_phrase[start_counter] == " "
      start_counter += 1
    end
    while my_phrase[end_counter] == " "
      end_counter -= 1
    end
    if my_phrase[start_counter] != my_phrase[end_counter]
      return false
    end

    start_counter += 1
    end_counter -= 1
  end

  return true
end
