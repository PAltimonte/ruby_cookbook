# Recipe: 2.5 Representing Unprintable Characters

octal = "\000\001\010\020"
octal.each_byte { |x| puts x }

hexidecimal = "\x00\x01\x10\x20"
hexidecimal.each_byte { |x| puts x }

File.open("smiley.html", "wb") do |f|
  f << "<meta http-equiv=\"Content-Type\" content=\"text/html;character=UTF-8\">"
  f << "\xe2\x98\xBA"
end

#  [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_5.cr
# 0
# 1
# 8
# 16
# 0
# 1
# 16
# 32
