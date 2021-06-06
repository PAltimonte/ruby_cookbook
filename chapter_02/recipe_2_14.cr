# Recipe 2.14  Word-Wrapping Lines of Text

def wrap(s, width = 78)
  s.gsub(/(.{1,#{width}})(\s+|\Z)/, "\\1\n")
end

puts wrap("This text is too short to be wrapped.")
puts wrap("This text is not too short to be wrapped", 20)
puts wrap("These ten-character columns are stifling to creativity!", 10)

poetry = %q{It is an ancient Mariner,
And he stoppeth one of three.
"By thy long beard and glittering eye,
Now wherefore stopp'st thou me?"}
puts wrap(poetry, 20)

prose = %q{I find myself alone these days, more often than not,
watching the rain run down nearby windows. How long has it been
raining? The newspapers now print the total, but no one reads them
anymore.}
puts wrap(prose, 60)
puts 

def reformat_wrapped(s, width=78)
  lines = [] of String
  line = ""
  s.split(/\s+/).each do |word|
    if line.size + word.size >= width
      lines << line
      line = word
    elsif line.empty?
      line = word
    else
      line += " " + word
    end
  end
  lines << line if line
  lines.join("\n")
end

puts reformat_wrapped(prose, 60)
puts

def my_reformat_wrapped(s, width=78)
  wrap(s.split(/\s+/).join(" "), width)
end
puts my_reformat_wrapped(prose, 60)



# [main][~/Books/ruby_cookbook/chapter_02] crystal recipe_2_14.cr
# This text is too short to be wrapped.
# This text is not too
# short to be wrapped
# These
# ten-character
# columns
# are
# stifling
# to
# creativity!
# It is an ancient
# Mariner,
# And he stoppeth one
# of three.
# "By thy long beard
# and glittering eye,
# Now wherefore
# stopp'st thou me?"
# I find myself alone these days, more often than not,
# watching the rain run down nearby windows. How long has it
# been
# raining? The newspapers now print the total, but no one
# reads them
# anymore.

# I find myself alone these days, more often than not,
# watching the rain run down nearby windows. How long has it
# been raining? The newspapers now print the total, but no one
# reads them anymore.

# I find myself alone these days, more often than not,
# watching the rain run down nearby windows. How long has it
# been raining? The newspapers now print the total, but no one
# reads them anymore.
