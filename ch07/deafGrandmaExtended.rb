puts 'DEAR SWEETIE!!?'
count_bye = 0
while true
  shout = gets.chomp
  # Counting BYE
  if shout == 'BYE'
    count_bye = count_bye + 1
  else
    count_bye = 0
  end
  # Condition to exit
  if count_bye >= 3
    puts 'BYE SWEETIE!!'
    break
  end
  # Condition of shouting
  if shout != shout.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
  else
    year = rand(21) + 1930
    puts 'NO, NOT SINCE ' + year.to_s + '!'
  end
end
