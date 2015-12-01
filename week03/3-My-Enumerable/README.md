# Overview

The great power of Ruby iteration comes out of a simple module. I bet, you can
implement part of it as well.

## Resources

Reading the Enumerable documentation one more time won't hurt. Read it again,
and again, and again... You get the idea :)

* <http://www.ruby-doc.org/core-2.1.3/Enumerable.html>

## Testing

There are tests which you can use in order to check if your code is OK.

In order to run the tests, you will have to take all files from this directory (without `README.md`).

When you have all files, frist, you need to install the desired gems:

```
$ bundle install
```

If you do not have bundler, install it:

```
$ gem install bundler
```

And when you have everything ready, in order to run the tests, type the following command:

```
$ bundle exec rake
```

You will see which tests pass and which don't

## My Enumerable

Implement a module called `MyEnumerable` which implements a similar module to
Enumerable, but with own little twist. _Meaning, we have methods Enumerable
doesn't, we named filter how we liked it, etc._

```ruby
module MyEnumerable
  def map
    # Your code goes here.
  end

  def filter
    # Your code goes here.
  end

  def reject
    # Your code goes here.
  end

  def reduce(initial = nil)
    # Your code goes here.
  end

  def any?
    # Your code goes here.
  end

  def one?
    # Your code goes here.
  end

  def all?
    # Your code goes here.
  end

  # Yield each consequative n elements.
  def each_cons(n)
    # Your code goes here.
  end

  def include?(element)
    # Your code goes here.
  end

  # Count the occurences of an element in the collection. If no element is
  # given, count the size of the collection.
  def count(element = nil)
    # Your code goes here.
  end

  # Count the size of the collection.
  def size
    # Your code goes here.
  end

  # Groups the collection by result of the block.
  # Returns a hash where the keys are the evaluated
  # result from the block and the values are arrays
  # of elements in the collection that correspond to
  # the key.
  def group_by
  end

  def min
    # Your code goes here.
  end

  def min_by
    # Your code goes here.
  end

  def max
    # Your code goes here.
  end

  def max_by
    # Your code goes here.
  end

  def take(n)
    # Your code goes here.
  end

  def take_while
    # Your code goes here.
  end

  def drop(n)
    # Your code goes here.
  end

  def drop_while
    # Your code goes here.
  end
end
```

## Enumerator

Return an iterator for the method, if no block is given.

## Aliases

As a bonus, create aliases for the following methods, so they can be invoked
with different names.

```
#map -> #collect
#filter -> #select
#reduce -> #foldl
```

## Strict

As a bigger challenge, try to strictly follow Enumerable. For example if no
initial element is given to `#reduce` Ruby's Enumerable will take the first one
of the collection as the initial value.

This is what makes `(1..10).reduce { |sum, n| sum + n }` work. Consult with
[rubyspec][] to better mimic Ruby's Enumerable behaviour.

[rubyspec]: https://github.com/rubyspec/rubyspec/tree/7fb7465aac1ec8e2beffdfa9053758fa39b443a5/core/enumerable
