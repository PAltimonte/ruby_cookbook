# Recipe 2.10 Changing the Case of a String

class String
  # The value of self can not be changed. Return a new string.
  def swapcase
    new_self = ""
    self.each_char { |c| new_self += c.uppercase? ? c.downcase : c.upcase }
    new_self
  end
end

s = "HELLO, I am not here. I WENT to the MaRKEt."

puts s.upcase
puts s.downcase
puts s.swapcase
puts s.capitalize

# [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_10.cr
# HELLO, I AM NOT HERE. I WENT TO THE MARKET.
# hello, i am not here. i went to the market.
# hello, i AM NOT HERE. i went TO THE mArkeT.
# Hello, i am not here. i went to the market.
