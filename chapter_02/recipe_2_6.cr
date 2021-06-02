# Recipe: 2.6 Converting Between Characters and Values

p 'a'.ord # ord only works for characters
p '!'.ord
p '\n'.ord

p "a"[0]
p "bad sound"[1]

p "a"[0].ord
p "bad sound"[1].ord

p 97.chr
p 33.chr
p 10.chr
p 0.chr
p 256.chr

# [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_6.cr
#
# 97
# 33
# 10
# 'a'
# 'a'
# 97
# 97
# 'a'
# '!'
# '\n'
# '\u{0}'
# 'Ā'
