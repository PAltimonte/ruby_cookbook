p Random.rand

seed = 1234

random_generator = Random.new(seed)
p random_generator.rand
p random_generator.rand

random_generator2 = Random.new(seed)
p random_generator2.rand
p random_generator2.rand

p random_generator.rand == random_generator2.rand

# [~/Books/ruby_cookbook/chapter_01] ruby random.rb
# 0.41689894743070854
# 0.1915194503788923
# 0.6221087710398319
# 0.1915194503788923
# 0.6221087710398319
# true
# [~/Books/ruby_cookbook/chapter_01] crystal random.rb
# 0.21669924392016018
# 0.23669194799424767
# 0.7577886331277144
# 0.23669194799424767
# 0.7577886331277144
# true
