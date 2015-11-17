def hello_ruby
  puts 'Hello Ruby'
end

def example_with_numbers
  a = 5
  b = 60

  puts a + b

  # This can be written also as:
  # a +1 while a < b
  while a < b do
    a += 1
  end

  puts "a is #{a}, b is #{b}"
end

def example_reading_arguments
  if ARGV.empty?
    puts 'No arguments given'
    return
  end

  arg = ARGV.first.to_i

  if arg.even?
    puts "Argument #{arg} is even"
  else
    puts "Argument #{arg} is odd"
  end
end

# Here we have arrays / lists
# The documentation about Arrays is here - http://ruby-doc.org/core-2.2.0/Array.html
def sum(numbers)
  result = 0
  index = 0

  while index < numbers.length
    result += numbers[index]
    index += 1
  end

  result
end

# Here we have hashes
# The documentation about Hashes is here - http://ruby-doc.org/core-2.2.0/Hash.html
def ruby_books
  {
    'Matz' => 'The Ruby Language',
    'Black' => 'The Well-Grounded Rubyist'
  }
end

# There is no need for () when calling functions / methods
hello_ruby
example_with_numbers
example_reading_arguments
puts sum [1, 2, 3, 4]

books = ruby_books

puts "Matz book is: #{books['Matz']}" if books.key? 'Matz'
