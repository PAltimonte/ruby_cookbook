require 'objspace'

objects = Hash.new(0)
ObjectSpace.each_object { |obj| objects[obj.class] += 1 }
pp objects.sort_by { |k, v| -v }


# [~/Books/ruby_cookbook/chapter_01] ruby object_space.rb
# [[String, 9487],
#  [Array, 1709],
#  [Class, 346],
#  [Gem::Requirement, 249],
#  [Hash, 120],
#  [Encoding, 103],
#  [Gem::Dependency, 90],
#  [Regexp, 82],
#  [Time, 79],
#  [Gem::Specification, 78],
#  [Gem::Version, 52],
#  [Module, 36],
#  [Symbol, 28],
#  [Proc, 21],
#  [File, 20],
#  [Range, 11],
#  [MatchData, 10],
#  [Enumerator, 6],
#  [Object, 5],
#  [Thread::Mutex, 4],
#  [Float, 4],
#  [IO, 3],
#  [fatal, 2],
#  [Monitor, 1],
#  [DidYouMean::PlainFormatter, 1],
#  [Gem::StubSpecification, 1],
#  [Gem::StubSpecification::StubLine, 1],
#  [Complex, 1],
#  [Integer, 1],
#  [Gem::PathSupport, 1],
#  [IOError, 1],
#  [Binding, 1],
#  [Thread, 1],
#  [RubyVM, 1],
#  [Ractor, 1],
#  [NoMemoryError, 1],
#  [SystemStackError, 1],
#  [ARGF.class, 1],
#  [ThreadGroup, 1],
#  [#<Class:0x00007fdfe0866588>, 1],
#  [#<Class:0x00007fdfe084d218>, 1],
#  [Gem::Platform, 1]]
#
# Crystal does not seem to have this.
#
# [~/Books/ruby_cookbook/chapter_01] crystal object_space.rb
# In object_space.rb:1:9
#
# 1 | require 'objspace'
# ^
# Error: unterminated char literal, use double quotes for strings
