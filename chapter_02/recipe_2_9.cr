# Recipe 2.9 Processing a String One Word at a Time

class String
  def word_count
    frequencies = Hash(String, Int32).new(default_value: 0)
    downcase.scan(/\w+/) { |word| frequencies[word[0]] += 1 }
    return frequencies
  end
end

puts %{Dogs dogs dog dog dogs.}.word_count
puts %{"I have no shame." I said.}.word_count



# [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_9.cr
# {"dogs" => 3, "dog" => 2}
# {"i" => 2, "have" => 1, "no" => 1, "shame" => 1, "said" => 1}
