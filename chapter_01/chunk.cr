"the quick borwn fox".each_char.chunk do |letter|
  ['a', 'e', 'i', 'o', 'u'].includes?(letter) ? "vowel" : "consonant"
end.each do |type, letters|
  puts "#{type}: #{letters.join}"
end


#[~/Books/ruby_cookbook/chapter_01] crystal chunk.cr
#consonant: th
#vowel: e
#consonant:  q
#vowel: ui
#consonant: ck b
#vowel: o
#consonant: rwn f
#vowel: o
#consonant: x
