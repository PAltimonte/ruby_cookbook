# Recipe 2.11 Managing Whitespace

puts " \tWhitespace at beginning and end. \t\n\n".strip

s = "Some text."
puts s.center(15)
puts s.center(15, '*')

puts s.ljust(15)
puts s.ljust(15, '*')

puts s.rjust(15)
puts s.rjust(15, '*')

# [main][~/Books/ruby_cookbook/chapter_02] ruby recipe_2_11.rb
# Whitespace at beginning and end.
#   Some text.
# **Some text.***
# Some text.
# Some text.*****
#      Some text.
# *****Some text.
# [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_11.rb
# Whitespace at beginning and end.
#   Some text.
# **Some text.***
# Some text.
# Some text.*****
#      Some text.
# *****Some text.
