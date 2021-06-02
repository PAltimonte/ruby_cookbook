# Recipe: 2.4 Reversing a String by Words or Characters

s = ".sdrawkcab si gnirts sihT"
puts s.reverse
puts s

puts s.reverse!
puts s

s = "order. wrong the in are words These"
puts s.split(/(\s+)/).reverse!.join('')
puts s.split(/\b/).reverse!.join('')

# [main][~/Books/ruby_cookbook/chapter_02] ruby reversing.rb
# This string is backwards.
# .sdrawkcab si gnirts sihT
# This string is backwards.
# This string is backwards.
# These words are in the wrong order.
# These words are in the wrong. order
# [main][~/Books/ruby_cookbook/chapter_02] crystal reversing.rb
# In reversing.rb:11:37
#
#  11 | puts s.split(/(\s+)/).reverse!.join('')
#                                           ^
# Error: invalid empty char literal (did you mean '\''?)
