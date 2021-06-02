# Recipe 2.12

puts "A string".respond_to? :to_str
puts "A string".respond_to? :to_s
puts Exception.new.respond_to? :to_str # According to the book, it responded to Ruby 2.x
puts Exception.new.respond_to? :to_s
puts 4.respond_to? :to_str
puts 4.respond_to? :to_s

def join_to_successor(s)
  raise ArgumentError, "No successor method!" unless s.respond_to? :succ
  "#{s}#{s.succ}"
end

puts join_to_successor('a')
puts join_to_successor(4)
puts join_to_successor(4.01)

# [main][~/Books/ruby_cookbook/chapter_02] ruby recipe_2_12.rb
# true
# true
# false
# true
# false
# true
# ab
# 45
# recipe_2_12.rb:11:in `join_to_successor': No successor method! (ArgumentError)
# 	from recipe_2_12.rb:17:in `<main>'
