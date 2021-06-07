# Recipe 2.17 Replacing Multiple Patterns in a Single Pass

class String
  def mgsub(key_value_pairs=Hash.new(Regex, String).freeze)
    puts key_value_pairs
    # regexp_fragments = key_value_pairs.collect { |k,v| k }
    # gsub(Regexp.union(*regexp_fragments)) do |match|
    #   key_value_pairs.detect { |k,v| k =~ match }[1]
    # end
  end
end

puts "GO HOME!".mgsub([[/.*GO/i, "Home"], [/home/i, "is where the heart is"]])
puts "Here is number #123".mgsub([[/[a-z]/i, '#'], [/#/, 'P']])

