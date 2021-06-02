# Recipe: 2.5 Representing Unprintable Characters

octal = "\000\001\010\020"
octal.each_byte { |x| puts x }

hexidecimal = "\x00\x01\x10\x20"
hexidecimal.each_byte { |x| puts x }

open("smiley.html", "wb") do |f|
  f << "<meta http-equiv=\"Content-Type\" content=\"text/html;character=UTF-8\">"
  f << "\xe2\x98\xBA"
end

# [main][~/Books/ruby_cookbook/chapter_02] ruby recipe_2_5.rb
# 0
# 1
# 8
# 16
# 0
# 1
# 16
# 32
# [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_5.rb
# Showing last frame. Use --error-trace for full trace.
#
# In recipe_2_5.rb:9:1
#
# 9 | open("smiley.html", "wb") do |f|
#   ^---
#   Error: undefined method 'open' for top-level
