# Week 01 - Staring out with Ruby

Ruby is a very beautiful & strange at first language.

We are going to solve a lot of problems using it & making progress one step at a time. Don't expect the entire syntax from the first week :)

## Getting to know Ruby

Here are materials, **related to motivation & philoshopy of Ruby:**

* [Interview with Yukihiro Matsumoto called The Philosophy of Ruby](http://www.artima.com/intv/ruby.html)
* [Keynote: Jim Weirich - Why aren't you using Ruby? (RubyConf Uruguay 2013)](https://www.youtube.com/watch?v=0D3KfnbTdWw)

Here are materials, **related to the syntax & language constructs:**

* [The first lecture is located here](https://ruby.hackbulgaria.com/lectures/01#/)
* The first problem that you are going to face is to run the [hello.rb](hello.rb) file and examine the structures in it. This will give you clues for how to solve your problems.
* [To get a good idea of **if, elsif, else and unless structures**, read here](http://www.tutorialspoint.com/ruby/ruby_if_else.htm)
* [If you wonder what kind of loop you can use, take a loot at that reference](http://www.tutorialspoint.com/ruby/ruby_loops.htm)
* [As you will see both double and single quotes, check this for the difference](http://stackoverflow.com/questions/6395288/double-vs-single-quotes)

## Basic Language Constructs

The if statement comes in many forms:

You can do it as a one-liner:

```ruby
if 1 == 1 then puts "1 == 1" end
```

This will output `1 == 1`.

You can use if as a modifier:

```ruby
puts "1 == 1" if 1 == 1
```

This will output, again, `1 == 1`

If you want to use multiline ifs, you can do like so:

```ruby
if 2.even?
  puts "Did you know?"
  puts "2 is even!"
end
```

There is no need for you to write `then`, when you have multiline ifs.

Every `if` can have multiple `elsif` and one `else` statements:

```ruby
color = ARGV[0]

if color == "red"
  puts "Hold on!"
elsif color == "yellow"
  puts "Prepare yourself"
elsif color == "green"
  puts "Go Go Go!"
else
  puts "I don't know this color"
end
```

There is an opposite of the `if` construction, called `unless`.

Unless means "if not" and can be used in such scenarios.

Now go ahead and test some Ruby code!
