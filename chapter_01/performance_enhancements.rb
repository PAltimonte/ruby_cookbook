# Crystal does not support lazy (or flat_map)

array = [1, 2, 3].lazy.map { |x| x * 10 }.select { |x| x  > 10 }
p array
