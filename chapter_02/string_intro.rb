string = "My first string"
p string
p string.length
p string.count('t')

french_string = "il \xc3\xa9tait une fois"
p french_string
p french_string.length

long_string = <<EOF
Here is a long string
With many paragraphs
EOF
puts long_string

puts "Slices ..."
p string.slice(3, 5)
p string.byteslice(3) + string.byteslice(4) + string.byteslice(5) + string.byteslice(6) + string.byteslice(7)
p string[3, 5]

p string.upcase
p string
p string.upcase!
p string

p string.empty?
p string.include? "MY"

# [[main][~/Books/ruby_cookbook/chapter_02] ruby string_intro.rb
# "My first string"
# 15
# 2
# "il était une fois"
# 17
# Here is a long string
# With many paragraphs
# Slices ...
# "first"
# "first"
# "first"
# "MY FIRST STRING"
# "My first string"
# "MY FIRST STRING"
# "MY FIRST STRING"
# false
# true
