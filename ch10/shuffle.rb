def shuffle_wrapper array
  shuffle(array, [])
end
# Recursive Function
def shuffle array, shuffled_array
  if array.length <= 0
    return shuffled_array
  end
  random = rand(array.length)
  new_array = []
  iter = 0
  array.each do |i_th|
    if array[iter] != array[random]
      new_array.push i_th
    else
      shuffled_array.push i_th
    end
    iter = iter + 1
  end
  shuffle(new_array, shuffled_array)
end

word_array = []
puts 'Please enter an array: '
while true
  word = gets.chomp
  if word == ''
    break
  end
  word_array.push word
end
puts 'Here is the shuffled array:'
puts shuffle_wrapper(word_array)
if word_array == []
  puts '(No inputs. Empty array returned!!)'
end
