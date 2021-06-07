# Recipe 2.15 Generating a Succession of Strings

("aa".."ag").each { |x| puts x }

def endless_string_succession(start)
  while true
    yield start
    start = start.succ 
  end
end

endless_string_succession("fol") do |x|
  puts x
  break if x[-1] == x[-2]
end

# [main][~/Books/ruby_cookbook/chapter_02] ruby recipe_2_15.rb
# aa
# ab
# ac
# ad
# ae
# af
# ag
# fol
# fom
# fon
# foo
# [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_15.rb
# aa
# ab
# ac
# ad
# ae
# af
# ag
# fol
# fom
# fon
# foo