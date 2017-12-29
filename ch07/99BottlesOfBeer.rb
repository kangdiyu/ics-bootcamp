bottle_number = 99
while bottle_number >= 3
  puts bottle_number.to_s + ' bottles of beer on the wall, ' + bottle_number.to_s + ' bottles of beer.'
  bottle_number = bottle_number - 1
  puts 'Take one down and pass it around, ' + bottle_number.to_s + ' bottles of beer on the wall.'
  puts ''
end

puts '2 bottles of beer on the wall, 2 bottles of beer.'
puts 'Take one down and pass it around, 1 bottle of beer on the wall.'
puts ''
puts '1 bottle of beer on the wall, 1 bottle of beer.'
puts 'Take one down and pass it around, no more bottles of beer on the wall.'
puts ''
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
