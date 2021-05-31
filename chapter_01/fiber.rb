thread = Thread.new do
  puts "Hello world!"
end

fiber = Fiber.new do
  puts "Hello world! - fiber"
end

fiber.resume


# [~/Books/ruby_cookbook/chapter_01] ruby fiber.rb
# Hello world! - fiber
# [~/Books/ruby_cookbook/chapter_01] crystal fiber.rb
# Hello world!
# Hello world! - fiber
