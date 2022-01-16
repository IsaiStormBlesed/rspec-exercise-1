def average(num_1, num_2)
  (num_1 + num_2) / 2.0
end

def average_array(numbers)
  numbers.sum / numbers.length.to_f
end

def repeat(str, num)
  str * num
end

def yell(str)
  str.upcase + '!'
end

def alternating_case(sentence)
  arr = sentence.split(' ')
  new_arr = arr.map.with_index do |word, idx|
    if idx % 2 == 0
      word.upcase
    else
      word.downcase
    end
  end
  new_arr.join(' ')
end
