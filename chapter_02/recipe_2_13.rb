# Recipe 2.13 Getting the Parts of a String You Want

s = "My kingdom for a string!"

puts s.slice(3,7)
puts s[3,7]
puts s[0,3]
puts s[11, 5]
puts s[11, 17]
puts s[/.ing/]
puts s[/str.*/]

# [main][~/Books/ruby_cookbook/chapter_02] ruby recipe_2_13.rb
# kingdom
# kingdom
# My
# for a
# for a string!
# king
# string!
# [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_13.rb
# Showing last frame. Use --error-trace for full trace.

# In recipe_2_13.rb:3:8

#  3 | puts s.slice(3,7)
#             ^----
# Error: undefined method 'slice' for String