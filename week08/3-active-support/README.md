# Active Support

[Active Support] is the Ruby on Rails component responsible for providing Ruby
language extensions, utilities, and other transversal stuff.

It offers a richer bottom-line at the language level, targeted both at the
development of Rails applications, and at the development of Ruby on Rails
itself.

We'll be using it throughout all of our Ruby on Rails applications, so why not
reimplement some of it functionalities for fun and profit?

## Object#blank?

In Ruby, everything, except `false` and `nil`, is truthy. However, in a lot of
cases we care whether or not we have useful data, and not whether or not we
have a truthy, or falsy, Ruby object. This is where `Object#blank?` comes
into play.

The following values are considered to be blank in a Rails application:

- nil and false,
- strings composed only of whitespace (see note below),
- empty arrays and hashes, and
- any other object that responds to empty? and is empty.

Note that numbers are not mentioned. In particular, 0 and 0.0 are not blank.

## Object#present?

`Object#present?` is the opposite of `Object#blank?`.

## Object#presence

The presence method returns its receiver if `present?`, and `nil` otherwise. It is
useful for idioms like this:

```ruby
host = config[:host].presence || 'localhost'
```

## Object#try

When you want to call a method on an object only if it is not `nil`, the simplest
way to achieve it is with conditional statements, adding unnecessary clutter.
The alternative is to use try. `try` is like `Object#send` except that it returns
`nil` if sent to `nil.`

Here is an example:

```ruby
# Without try:
unless @number.nil?
  @number.next
end
```

```ruby
# With try:
@number.try(:next)
```

Another example is this code from `ActiveRecord::ConnectionAdapters::AbstractAdapter`
where @logger could be `nil.` You can see that the code uses try and avoids an
unnecessary check.

```ruby
def log_info(sql, name, ms)
  if @logger.try(:debug?)
    name = '%s (%.1fms)' % [name || 'SQL', ms]
    @logger.debug(format_log_entry(name, sql.squeeze(' ')))
  end
end
```

`try` can also be called without arguments but a block, which will only be
executed if the object is not nil:

```ruby
@person.try { |p| "#{p.first_name} #{p.last_name}" }
```

Even more, if you skip the parameter, method calls go to the target object.

```ruby
@person.try { "#{first_name} #{last_name}" }
```

### Do or do not, there is no try

A lot of people consider `Object#try` an anti-pattern. Why do you think that
is?

## StringInquirer

`StringInquiry` is a special kind of `String`. One that let's you ask the
question like:

> Are you the string production?

It may sound silly, but its quite handy when it comes to code readability. Here
is an example:

```ruby
# Without StringInqury

environment = 'production'

if environment == 'production'
  # Please don't write code like that in a production application.
end

# With StringInquiry:

environment = StringInquirer.new('production')
if environment.production?
  # Seriously, don't even try it.
end

StringInquirer.new('active').inactive? # => false
```

While at it, add a `String#inquiry` method that converts a string into a
`StringInquirer` object making equality checks even prettier.

```ruby
"production".inquiry.production? # => true
"active".inquiry.inactive?       # => false
```

[Active Support]: http://guides.rubyonrails.org/active_support_core_extensions.html
