puts 'Enter starting year: '
year_start = gets.chomp.to_i
puts 'Enter ending year: '
year_end = gets.chomp.to_i
puts 'Leap Year(s): '
year_test = year_start
while year_test <= year_end
  if ( (year_test % 4 == 0) && (year_test % 100 != 0) )  ||   year_test % 400 == 0
    puts year_test
  end
  year_test = year_test + 1
end
