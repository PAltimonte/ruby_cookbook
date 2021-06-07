# Recipe 2.16 Matching Strings with Regular Expressions

string = "This is a 30-character string."

if string =~ /([0-9]+)-character/ && $1.to_i == string.size
  puts "Yes, there are $1 characters in that string"
end

match = /([0-9]+)-character/.match(string)
if match && match[1].to_i == string.size
  puts "Yes, there are $1 characters in that string"
end

string = "123"

case string
when /^[a-zA-Z]+$/
  puts "Letters"
when /^[0-9]+$/
  puts "Numbers"
else
  puts "Mixed"
end

# [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_16.cr
# Yes, there are $1 characters in that string
# Yes, there are $1 characters in that string
# Numbers
