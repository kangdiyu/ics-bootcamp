def old_roman_numeral num
  # number of M (1000)
  m = num / 1000
  reminder_M = num % 1000
  # number of D (500)
  d = reminder_M / 500
  reminder_D = reminder_M % 500
  # number of C (100)
  c = reminder_D / 100
  reminder_C = reminder_D % 100
  # number of L (50)
  l = reminder_C / 50
  reminder_L = reminder_C % 50
  # number of X (10)
  x = reminder_L / 10
  reminder_X = reminder_L % 10
  # number of V (5)
  v = reminder_X / 5
  reminder_V = reminder_X % 5
  # number of I (1)
  i = reminder_V
  roman = 'M' * m + 'D' * d + 'C' * c + 'L' * l + 'X' * x + 'V' * v + 'I' * i
  roman
end


puts 'Enter a number: '
num = gets.chomp.to_i
puts old_roman_numeral(num)
