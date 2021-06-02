# Recipe 2.7 Converting Between Strings and Symbols

puts :a_symbol.to_s
puts :AnotherSymbol.id2name
puts :"Yet another symbol!".to_s

puts :dodecahedron.object_id
symbol_name = "dodecahedron"
puts symbol_name.intern
puts symbol_name.intern.class
puts symbol_name.intern.object_id

# [main][~/Books/ruby_cookbook/chapter_02] ruby recipe_2_7.rb
# a_symbol
# AnotherSymbol
# Yet another symbol!
# 496488
# dodecahedron
# Symbol
# 496488
# [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_7.rb
# Showing last frame. Use --error-trace for full trace.
#
# In recipe_2_7.rb:4:21
#
#  4 | puts :AnotherSymbol.id2name
#                          ^------
# Error: undefined method 'id2name' for Symbol
