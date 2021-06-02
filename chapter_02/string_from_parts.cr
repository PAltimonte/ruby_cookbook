hash = { key1: "val1", key2: "val2" }
string = ""
hash.each { |k,v| string += "#{k} is #{v}\n" }
puts string

# Slightly more efficient
string = ""
hash.each { |k, v| string += k.to_s + " is " + v + "\n" }
puts string

puts hash.keys.join("\n") + "\n"

# [main][~/Books/ruby_cookbook/chapter_02] crystal string_from_parts.cr
# key1 is val1
# key2 is val2
# key1 is val1
# key2 is val2
# key1
# key2
