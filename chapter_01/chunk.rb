"the quick borwn fox".each_char.chunk do |letter|
  %w(a e i o u).include?(letter) ? "vowel" : "consonant"
end.each do |type, letters|
  puts "#{type}: #{letters.join}"
end

# [~/Books/ruby_cookbook/chapter_01] ruby chunk.rb
# consonant: th
# vowel: e
# consonant:  q
# vowel: ui
# consonant: ck b
# vowel: o
# consonant: rwn f
# vowel: o
# consonant: x
