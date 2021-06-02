string = "My first string"
p string
p string.size # Crystal has settled on 1 method for this.
p string.count('t')

french_string = "il \xc3\xa9tait une fois"
p french_string
p french_string.size

long_string = <<-EOF # Slight difference from Ruby "<<EOF"
Here is a long string
With many paragraphs
EOF
puts long_string

puts "Slices ..."
p string.byte_slice(3, 5)
p string.byte_slice(3) # This is a little different from Ruby which returns just 'f'. It returns a the remainder of the
                       # string starting with the byte specified.
p string[3, 5]

p string.upcase
p string
# p string.upcase! Not available in Crystal
# p string

p string.empty?
p string.upcase.includes? "MY"


# main][~/Books/ruby_cookbook/chapter_02] crystal string_intro.cr
# "My first string"
# 15
# 2
# "il était une fois"
# 17
# Here is a long string
# With many paragraphs
# Slices ...
# "first"
# "first string"
# "first"
# "MY FIRST STRING"
# "My first string"
# false
# true
