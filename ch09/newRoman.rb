def new_roman_numeral num
  # number of M (1000)
    m = num / 1000
    reminder_M = num % 1000
  # number of C (100)
    c = reminder_M / 100
    reminder_C = reminder_M % 100
  # number of X (10)
    x = reminder_C / 10
    reminder_X = reminder_C % 10
  # number of I (1)
    i = reminder_X

  # Special Cases
  # 9xx and 4xx
  if c == 9
    new_roman = 'M'*m + 'CM'
  elsif c == 4
    new_roman = 'M'*m + 'CD'
  else
    new_roman = 'M'*m + 'D'*((num % 1000)/500) + 'C'*((num % 500)/100)
  end
  # 9x and 4x
  if x == 9
    new_roman = new_roman + 'XC'
  elsif x == 4
    new_roman = new_roman + 'XL'
  else
    new_roman = new_roman + 'L'*((num % 100)/50) + 'X'*((num % 50)/10)
  end
  # 9 and 4
  if i == 9
    new_roman = new_roman + 'IX'
  elsif i == 4
    new_roman = new_roman + 'IV'
  else
    new_roman = new_roman + 'V'*((num % 10)/5) + 'I'*(num % 5)
  end

  return new_roman
end

puts 'Enter a number: '
num = gets.chomp.to_i
puts new_roman_numeral num
