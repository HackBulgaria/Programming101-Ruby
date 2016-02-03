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

Implement the following function: `max_scalar_product(v1, v2)`.

You are given two vectors - `v1` and `v2`

A scalar product of two vectors is the following:

```
v1 = {a1, a2, ..., an}
v2 = {b1, b2, ..., bn}

The scalar product is written as:
v1 . v2 = a1 * b1 + a2 * b2 + ... + an * bn
```

Find a permutation of `v1` and a permutation of `v2` for which their scalar product **is the largest possible** and **return that scalar product**

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

## Sum Numbers in Matrix

You are given a `NxM` matrix  of integer numbers.

Implement a function, called `sum_matrix(m)` that returns the sum of all numbers in the matrix.

The matrix will be represented as nested lists in Python.

```ruby
m = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
sum_matrix(m) == 45
m = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
sum_matrix(m) == 0
m = [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]]
sum_matrix(m) == 55
```

## Matrix Bombing

You are givn a `NxM` matrix of integer numbers.

We can drop a bomb at any place in the matrix, which has the following effect:

* All of the **3 to 8 neighbours** (depending on where you hit!) of the target are reduced by the value of the target.
* Numbers can be reduced only to 0 - they cannot go to negative.

For example, if we have the following matrix:

```
10 10 10
10  9  10
10 10 10
```

and we drop bomb at `9`, this will result in the following matrix:

```
1 1 1
1 9 1
1 1 1
```

Implement a function called `matrix_bombing_plan(m)`.

The function should return a dictionary where keys are positions in the matrix, represented as tuples, and values are the total sum of the elements of the matrix, after the bombing at that position.

The positions are the standard indexes, starting from `(0, 0)`

For example if we have the following matrix:

```
1 2 3
4 5 6
7 8 9
```

and run the function, we will have:

```ruby
{[0, 0]=> 42,
 [0, 1]=> 36,
 [0, 2]=> 37,
 [1, 0]=> 30,
 [1, 1]=> 15,
 [1, 2]=> 23,
 [2, 0]=> 29,
 [2, 1]=> 15,
 [2, 2]=> 26}
```

We can see that if we drop the bomb at `(1, 1)` or `(2, 1)`, we will do the most damage!

We are going to represent one point as a list of two elements.

## Group Function

We are going to implement a very helpful function, called `group`.

`group` takes a list of things and returns a list of group, where each group is formed by all equal consecutive elements in the list.

**For example:**

```ruby
group([1, 1, 1, 2, 3, 1, 1]) == [[1, 1, 1], [2], [3], [1, 1]]
group([1, 2, 1, 2, 3, 3]) == [[1], [2], [1], [2], [3, 3]]
```

## Longest subsequence of equal consecutive elements

Implement the function `max_consecutive(items)`, which takes a list of things and returns an integer - the count of elements in the longest subsequence of equal consecutive elements.

For example, in the list `[1, 2, 3, 3, 3, 3, 4, 3, 3]`, the result is 4, where the longest subsequence is formed by `3, 3, 3, 3`

**Test examples::**

```ruby
max_consecutive([1, 2, 3, 3, 3, 3, 4, 3, 3]) == 4
max_consecutive([1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5]) == 3
```

