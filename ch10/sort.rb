# Wrapper function
def sort_wrapper unsorted_array
  sort(unsorted_array, [])
end
# Recursive Function
def sort unsorted_array, sorted_array
  if unsorted_array.length <= 0
    return sorted_array
  end
  # Initialization
  unsorted = []
  random = unsorted_array.pop # examine the last word and remove it
  unsorted_array.each do |exam|
    if exam < random
      unsorted.push random # add to the end
      random = exam
    else
      unsorted.push exam # add to the end
    end
  end
  sorted_array.push random
  sort(unsorted, sorted_array)
end

# Interface
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
puts sort_wrapper(word_array)
if word_array == []
  puts '(No inputs. Empty array returned!!)'
end
