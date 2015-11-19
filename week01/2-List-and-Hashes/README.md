# Warmup problems with List and Hashes

## Transforming integer into a list of digits and vice versa

Implement the Ruby function that takes an integer and returns a list of digits:

```ruby
number_to_digits 123 == [1, 2, 3]
number_to_digits 8087 = [8, 0, 8, 7]
```

After you are ready, implement the reverse of that function:

```ruby
digits_to_number [1, 2, 3] == 123
digits_to_number [8, 0, 8, 7] == 8087
```

## Extreme elements in a list

Implement the following functions that work on lists:

* `min(items)` - returns the mininum element in items
* `max(items)` - returns the maximum element in items
* `nth_min(n, items)` - returns the nth minimum element in items
* `nth_max(n, items)` - returns the nth maximum element in items

## Grayscale Image Histogram

Implement a function called `grayslace_histogram(image)` that takes a matrix (list of lists) of an image and returns the histogram distribution of each pixel.

Each of the matrix's values will be between 0 and 255.

Return a list result, which is a histogram of image => the value of `result[i]` should be the ammount of times `i` is in the matrix image.


For example, lets have the following 5x5 image

```
0   0   0   0   0
111 255 0   0   111
100 100 100 100 100
1   1   1   1   1
3   3   5   6   9
```

In the result, we should have the following results:

```ruby
result[0] = 7
result[1] = 5
result[3] = 2
result[5] = 1
result[6] = 1
result[9] = 1
result[100] = 5
result[111] = 2
result[255] = 1
```

## Maximal Scalar Product

Implement the following function: `maxScalarProduct(v1, v2)`.

You are given two vectors - `v1` and `v2`

A scalar product of two vectors is the following:

```
v1 = {a1, a2, ..., an}
v2 = {b1, b2, ..., bn}

The scalar product is written as:
v1 . v2 = a1 * b1 + a2 * b2 + ... + an * bn
```

Find a permutation of `v1` and a permutation of `v2` for which their scalar product **is the largest possible**

## Max Span

Implement the following function: `max_span(numbers)` where `numbers` is a list of numbers.

Consider the leftmost and righmost appearances of some value in the list.

We'll say that the "span" is the number of elements between the two inclusive. A single value has a span of 1.

**Returns the largest span found in the given array.**

Examples:

```ruby
max_span([1, 2, 1, 1, 3]) == 4
max_span([1, 4, 2, 1, 4, 1, 4]) == 6
max_span([1, 4, 2, 1, 4, 4, 4]) == 6
```

