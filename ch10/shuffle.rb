def shuffle array
  # Initialization
  shuffled = []
  while array.length > 0
    # Randomly Selection
    random = rand(array.length)
    # initialize an empty array that
    # stored the unprocessed parts of the array
    new_array = []
    iter = 0
    array.each do |i_th|
      if iter != random
        new_array.push i_th
      else
        shuffled.push i_th
      end
      iter = iter + 1
    end
    array = new_array
  end
  shuffled
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
puts shuffle(word_array)
if word_array == []
  puts '(No inputs. Empty array returned!!)'
end
