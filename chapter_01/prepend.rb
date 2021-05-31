module MyHelper
  def save
    puts "before"
    super
    puts "after"
  end
end

class MyGoodClass
  prepend MyHelper

  def save
    puts "my code"
  end
end

MyGoodClass.new.save


# [~/Books/ruby_cookbook/chapter_01] ruby  prepend.rb
# before
# my code
# after
# [~/Books/ruby_cookbook/chapter_01] crystal prepend.rb
# Showing last frame. Use --error-trace for full trace.
#
# In prepend.rb:10:3
#
# 10 | prepend MyHelper
# ^------
# Error: undefined method 'prepend' for MyGoodClass.class
