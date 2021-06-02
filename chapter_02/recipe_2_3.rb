# Recipe: 2.3 Substituting Variables into an Existing String

template = "Oceania has always been at war with %s."
puts template % "Eurasia"
puts template % "Eastasia"

puts "To 2 decimal places: %.2f" % Math::PI
puts "Zero-padded (for Ruby): %.5d" % Math::PI
puts "Zero-padded (for Crystal): %05.d" % Math::PI

# [main][~/Books/ruby_cookbook/chapter_02] ruby string_substition.rb
# Oceania has always been at war with Eurasia.
# Oceania has always been at war with Eastasia.
# To 2 decimal places: 3.14
# Zero-padded (for Ruby): 00003
# Zero-padded (for Crystal):     3
# [main][~/Books/ruby_cookbook/chapter_02] crystal string_substition.rb
# Oceania has always been at war with Eurasia.
# Oceania has always been at war with Eastasia.
# To 2 decimal places: 3.14
# Zero-padded (for Ruby): 3
# Zero-padded (for Crystal): 00003
