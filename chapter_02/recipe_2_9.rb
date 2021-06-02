# Recipe 2.9 Processing a String One Word at a Time

class String
  def word_count
    frequencies = Hash.new(0)
    downcase.scan(/\w+/) { |word| frequencies[word] += 1 }
    return frequencies
  end
end

puts %{Dogs dogs dog dog dogs.}.word_count
puts %{"I have no shame." I said.}.word_count

# [main][~/Books/ruby_cookbook/chapter_02] ruby recipe_2_9.rb
# recipe_2_9.rb:11: syntax error, unexpected '}', expecting '('
# puts {Dogs dogs dog dog gogs.}.word_count
#                               ^
# [main][~/Books/ruby_cookbook/chapter_02] ruby recipe_2_9.rb
# {"dogs"=>3, "dog"=>2}
# [main][~/Books/ruby_cookbook/chapter_02] ruby recipe_2_9.rb
# {"dogs"=>3, "dog"=>2}
# {"i"=>2, "have"=>1, "no"=>1, "shame"=>1, "said"=>1}
# [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_9.rb
# Showing last frame. Use --error-trace for full trace.
#
# In /usr/local/Cellar/crystal/1.0.0/src/hash.cr:285:55
#
#  285 | def self.new(initial_capacity = nil, &block : (Hash(K, V), K -> V))
#                                                            ^
# Error: can't infer the type parameter K for the generic class Hash(K, V). Please provide it explicitly
