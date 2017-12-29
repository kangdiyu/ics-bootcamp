title = 'Table of Contents'

ch01 = 'Chapter 1: Getting Started'
ch01_page = 'page  1'

ch02 = 'Chapter 2: Numbers'
ch02_page = 'page  9'

ch03 = 'Chapter 3: Letters'
ch03_page = 'page 13'

length_total = 50
length_left = 30
length_right = 20

puts title.center(length_total)
puts ch01.ljust(length_left) + ch01_page.rjust(length_right)
puts ch02.ljust(length_left) + ch02_page.rjust(length_right)
puts ch03.ljust(length_left) + ch03_page.rjust(length_right)
