# Vectors

We are going to implement vectors in 2D and n-dimensional space.

Check the example for [classes.rb](../classes.rb) in order to get some insight on how to set and get values of instance variables.

## Vector2D

Implement class named Vector2D with the following interface:

```ruby
class Vector2D
  def initialize(x, y)
    @x, @y = x, y
  end

  def x
  end

  def x=(value)
  end

  def y
  end

  def y=(value)
  end

  def length
    # Your code goes here.
  end

  def normalize
    # Your code goes here.
  end

  def ==(other)
    # Your code goes here.
  end

  def +(other)
    # Return a new Vector2D that represents the result
    # Your code goes here.
  end

  def -(other)
    # Return a new Vector2D that represents the result
    # Your code goes here.
  end

  def *(scalar)
    # Return a new Vector2D that represents the result
    # Your code goes here.
  end

  def /(scalar)
    # Return a new Vector2D that represents the result
    # Your code goes here.
  end

  def dot(other)
    # Return the dot product of the two vectors
    # https://en.wikipedia.org/wiki/Dot_product#Algebraic_definition
  end

  def to_s
    # Your code goes here.
  end
end
```

## Vector

Now that we got our hands dirty with classes and vectors, let's implement a
more generic n-dimensional vector. Let's use this vector as the basis for the
implementation of two other vector types.

* `Vector2D` the same vector as above, implemented in terms of `Vector`.
* `Vector3D` similar to `Vector2D`, but has a `z` attribute as well.

The `Vector` interface should be:

```ruby
class Vector
  def initialize(*components)
    # Let's make it more interesting here. I wanna initialize the vector with
    # `Vector.new(1, 2, 3, 4)` and `Vector.new([1, 2, 3, 4])` and expect the
    # same vector.
  end

  def dimension
    # Your code goes here
  end

  def length
    # Your code goes here.
  end

  def normalize
    # Your code goes here.
  end

  def [](index)
    # Your code goes here.
  end

  def []=(index, value)
    # Your code goes here.
  end

  def ==(other)
    # Your code goes here.
  end

  def +(vector_of_same_dimension_or_scalar)
    # Return a new Vector that represents the result
    # Your code goes here.
  end

  def -(vector_of_same_dimension_or_scalar)
    # Return a new Vector that represents the result
    # Your code goes here.
  end

  def *(scalar)
    # Return a new Vector that represents the result
    # Your code goes here.
  end

  def /(scalar)
    # Return a new Vector that represents the result
    # Your code goes here.
  end

  def dot(vector_of_same_dimension_or_scalar)
    # Return the dot product of the two vectors
    # https://en.wikipedia.org/wiki/Dot_product#Algebraic_definition
  end

  def to_s
    # Your code goes here.
  end
end
```
