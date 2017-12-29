word_array = []
puts 'Please enter the unsorted words:'
while true
  word = gets.chomp
  if word == ''
    break
  end
  word_array.push word
end
puts 'Here are the sorted word(s):'
puts word_array.sort
if word_array == []
  puts '(No inputs. Empty array returned!!)'
end
