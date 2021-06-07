# Recipe 2.17 Replacing Multiple Patterns in a Single Pass

class String
  def mgsub(key_value_pairs=[].freeze)
    regexp_fragments = key_value_pairs.collect { |k,v| k }
    gsub(Regexp.union(*regexp_fragments)) do |match|
      key_value_pairs.detect { |k,v| k =~ match }[1]
    end
  end
end

puts "GO HOME!".mgsub([[/.*GO/i, "Home"], [/home/i, "is where the heart is"]])
puts "Here is number #123".mgsub([[/[a-z]/i, '#'], [/#/, 'P']])

# [main][~/Books/ruby_cookbook/chapter_02] ruby recipe_2_17.rb
# Home is where the heart is!
# #### ## ###### P123
# [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_17.rb
# In recipe_2_17.rb:4:29

#  4 | def mgsub(key_value_pairs=[].freeze)
#                                ^
# Error: for empty arrays use '[] of ElementType'
