# Recipe 2.12

puts "A string".responds_to? :to_str
puts "A string".responds_to? :to_s
puts Exception.new.responds_to? :to_str # According to the book, it responded to Ruby 2.x
puts Exception.new.responds_to? :to_s
puts 4.responds_to? :to_str
puts 4.responds_to? :to_s

def join_to_successor(s)
  raise "No successor method for #{s}!" unless s.responds_to? :succ
  "#{s}#{s.succ}"
end

begin
  puts join_to_successor('a')
  puts join_to_successor(4)
  puts join_to_successor(4.01)
rescue ex
  puts ex
end

# [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_12.cr
# false
# true
# false
# true
# false
# true
# ab
# 45
# No successor method for 4.01!
