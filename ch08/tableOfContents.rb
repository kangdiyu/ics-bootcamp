title = 'Table of Contents'
puts title.center(60)

# Information of the Table of Contents
ch_all = [ ['Getting Started', ' 1'],
           ['Numbers',         ' 9'],
           ['Letters',         '13'] ]

# Chapter number
ch_index = 1
ch_all.each do |ch|
  # Title of Chapter
  ch_title = 'Chapter ' + ch_index.to_s + ':  '+ ch[0]
  # Page number of Chapter
  ch_page = 'page ' + ch[1]
  # Printing out
  puts ch_title.ljust(30) + ch_page.rjust(30)
  ch_index = ch_index + 1
end
