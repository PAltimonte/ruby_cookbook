# Recipe 2.7 Converting Between Strings and Symbols

puts :a_symbol.to_s
# puts :AnotherSymbol.id2name - there does not seem to be an equivalent
puts :"Yet another symbol!".to_s

# puts :dodecahedron.object_id - there does not seem to be an equivalent
symbol_name = "dodecahedron"
# puts symbol_name.intern
# puts symbol_name.intern.class
# puts symbol_name.intern.object_id

# [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_7.cr
# a_symbol
# Yet another symbol!
