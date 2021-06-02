# Recipe 2.10 Changing the Case of a String

s = "HELLO, I am not here. I WENT to the MaRKEt."

puts s.upcase
puts s.downcase
puts s.swapcase
puts s.capitalize


# [main][~/Books/ruby_cookbook/chapter_02] ruby recipe_2_10.rb
# HELLO, I AM NOT HERE. I WENT TO THE MARKET.
# hello, i am not here. i went to the market.
# hello, i AM NOT HERE. i went TO THE mArkeT.
# Hello, i am not here. i went to the market.
