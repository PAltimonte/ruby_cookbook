# Recipe 2.8 Processing a String One Character at a Time

"foobar".each_byte { |x| puts "#{x} = #{x.chr}" }

"foobar".scan( /./ ) { |c| puts c[0] }

# [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_8.cr
# 102 = f
# 111 = o
# 111 = o
# 98 = b
# 97 = a
# 114 = r
# f
# o
# o
# b
# a
# r
