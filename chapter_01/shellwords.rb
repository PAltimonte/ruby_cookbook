require 'shellwords'

argv = Shellwords.split('ls -la')
p argv

argv << Shellwords.escape("special's.txt")
p argv


# [master][~/Books/ruby_cookbook/chapter_01] ruby shellwords.rb
# ["ls", "-la"]
# ["ls", "-la", "special\\'s.txt"]
# [master][~/Books/ruby_cookbook/chapter_01] crystal shellwords.rb
# In shellwords.rb:1:9
#
# 1 | require 'shellwords'
# ^
# Error: unterminated char literal, use double quotes for strings
#
# It looks like Crystal considered and rejected adding shellwords in 2016.
#
# https://github.com/crystal-lang/crystal/issues/2657
