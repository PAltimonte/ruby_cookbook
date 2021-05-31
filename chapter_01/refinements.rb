module MyMonkeyPatches
  refine String do
    def length
      30
    end
  end
end

class TestMyMonkey
  using MyMonkeyPatches

  def string_length(string)
    string.length
  end
end

string = "foobar"

p string.length

p TestMyMonkey.new.string_length(string)

p string.length

# [~/Books/ruby_cookbook/chapter_01] ruby refinements.rb
# 6
# 30
# 6
# [~/Books/ruby_cookbook/chapter_01] crystal refinements.rb
# In refinements.rb:17:10
#
# 17 | string = 'foobar'
# ^
# Error: unterminated char literal, use double quotes for strings
#                                                     [~/Books/ruby_cookbook/chapter_01] ruby refinements.rb
#   6
#   30
#   6
#   [~/Books/ruby_cookbook/chapter_01] crystal refinements.rb
#   Showing last frame. Use --error-trace for full trace.
#
#   In refinements.rb:3:9
#
#   3 | def length
#     ^-----
#     Error: can't declare def dynamically
