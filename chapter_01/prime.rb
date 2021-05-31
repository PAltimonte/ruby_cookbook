require 'prime'

Prime.each(100) do |prime|
  p prime
end

p Prime.prime?(1)
p Prime.prime?(2)

# [~/Books/ruby_cookbook/chapter_01] ruby prime.rb
# 2
# 3
# 5
# 7
# 11
# 13
# 17
# 19
# 23
# 29
# 31
# 37
# 41
# 43
# 47
# 53
# 59
# 61
# 67
# 71
# 73
# 79
# 83
# 89
# 97
# false
# true
#
#  Nothing in Crystal's standard lib
#
# [~/Books/ruby_cookbook/chapter_01] crystal prime.rb
# In prime.rb:1:9
#
# 1 | require 'prime'
# ^
# Error: unterminated char literal, use double quotes for strings
