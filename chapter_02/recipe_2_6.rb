# Recipe: 2.6 Converting Between Characters and Values

p "a".ord
p "!".ord
p "\n".ord

p "a"[0]
p "bad sound"[1]

p "a"[0].ord
p "bad sound"[1].ord

p 97.chr
p 33.chr
p 10.chr
p 0.chr
p 256.chr

# [main][~/Books/ruby_cookbook/chapter_02] ruby recipe_2_6.rb
# 97
# 33
# 10
# "a"
# "a"
# 97
# 97
# "a"
# "!"
# "\n"
# "\x00"
# recipe_2_6.rb:17:in `chr': 256 out of char range (RangeError)
# 	from recipe_2_6.rb:17:in `<main>'
# [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_6.rb
# Showing last frame. Use --error-trace for full trace.
#
# In recipe_2_6.rb:3:7
#
#  3 | p "a".ord
#            ^--
# Error: undefined method 'ord' for String
