puts 'DEAR SWEETIE!!?'
while true
  shout = gets.chomp
  # Condition to exit
  if shout == 'BYE'
    puts 'BYE!'
    break
  end
  # Conditon of shouting
  if shout != shout.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
  else
    year = rand(21) + 1930
    puts 'NO, NOT SINCE ' + year.to_s + '!'
  end
end
