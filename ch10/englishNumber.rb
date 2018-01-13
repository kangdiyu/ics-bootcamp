def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
   return 'zero'
  end

  num_string = '' # Initialization
  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']
  higher  =   [[2,   'hundred' ],
               [3,   'thousand'],
               [6,   'million' ],
               [9,   'billion' ],
               [12,  'trillion']]
  # "left" is how much of the number
  # we still have left to write out.
  # "write" is the part we are
  # writing out right now.
  # write and left...get it? :)
  left = number
  while higher.length > 0
    higher_last = higher.pop # select the largest number
    higher_digit = 10 ** higher_last[0]
    higher_name = higher_last[1]
    write = left/higher_digit # floor devision
    left = left - write * higher_digit
    if write > 0
      # Recursion:
      smaller = english_number write
      # use recursion to describe each block
      num_string = num_string + smaller + ' ' + higher_name
      if left > 0
      num_string = num_string + ' ' # add space if there are more digits
      end
    end
  end


  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end
    if left > 0
      # add space if there are more digits
      num_string = num_string + '-'
    end
  end
  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end
  num_string
end

puts('Please enter a number (smaller than one quadrillion): ')
number = gets.chomp.to_i
puts(english_number number)
