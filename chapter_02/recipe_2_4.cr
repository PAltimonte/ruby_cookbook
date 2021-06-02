# Recipe: 2.4 Reversing a String by Words or Characters

s = ".sdrawkcab si gnirts sihT"
puts s.reverse
puts s

#puts s.reverse! # Not a method in crystal
#puts s

s = "order. wrong the in are words These"
puts s.split(/(\s+)/).reverse!.join
puts s.split(/\b/).reverse!.join


# [main][~/Books/ruby_cookbook/chapter_02] crystal reversing.cr
# This string is backwards.
# .sdrawkcab si gnirts sihT
# These words are in the wrong order.
# These words are in the wrong. order
