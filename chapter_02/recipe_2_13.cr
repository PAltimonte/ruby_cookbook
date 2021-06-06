# Recipe 2.13 Getting the Parts of a String You Want

s = "My kingdom for a string!"

puts s.byte_slice(3,7)
puts s[3,7]
puts s[0,3]
puts s[11, 5]
puts s[11, 17]
puts s[/.ing/]
puts s[/str.*/]
puts s[/king.*/]

# [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_13.cr
# kingdom
# kingdom
# My
# for a
# for a string!
# king
# string!
# kingdom for a string!