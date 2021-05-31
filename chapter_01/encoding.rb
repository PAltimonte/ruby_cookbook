require 'pp'

pp Encoding.list


# [~/Books/ruby_cookbook/chapter_01] ruby encoding.rb
# [#<Encoding:ASCII-8BIT>,
# #<Encoding:UTF-8>,
# #<Encoding:US-ASCII>,
# #<Encoding:UTF-16BE (autoload)>,
# #<Encoding:UTF-16LE (autoload)>,
# #<Encoding:UTF-32BE (autoload)>,
# #<Encoding:UTF-32LE (autoload)>,
# #<Encoding:UTF-16 (dummy) (autoload)>,
# ..


# Crystal uses the iconv application to translate files. Thus you can determine encodings using
# https://pi3g.com/2018/11/24/the-crystal-programming-language-and-encodings/
