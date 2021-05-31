ary = [0, 4, 7, 10, 12]

p (0...ary.size).bsearch { |i| ary[i] >= 4 }
p (0...ary.size).bsearch { |i| ary[i] >= 6 }
p (0...ary.size).bsearch { |i| ary[i] >= 8 }
p (0...ary.size).bsearch { |i| ary[i] >= 100 }


# [~/Books/ruby_cookbook/chapter_01] ruby bsearch.rb
# 1
# 2
# 3
# nil
# [~/Books/ruby_cookbook/chapter_01] crystal bsearch.rb
# 1
# 2
# 3
# nil
