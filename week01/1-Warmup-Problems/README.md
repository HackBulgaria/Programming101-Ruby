# Warmup Ruby Problems

You can find solutions here:

* In [procedural_solutions.rb](procedural_solutions.rb) are our first attempts at writing Ruby. Almost everything is written with `while` and `if`
* In [good_solutions.rb](good_solutions.rb) we do a rekate on everything with our knowledge of `Enumerable`

In a file called `warmup.rb`, solve the following problems:

## Factorial

Implement the factorial function `fact(n)`.

* Implement it using a simple loop
* Implement it using recursion

## Lucas series

Because Fibonacci is way too trivial, implement the following functions that work with [Lucas series](https://en.wikipedia.org/wiki/Lucas_number):

* `nth_lucas(n)` -> returns the nth Lucas number
* `first_lucas(n)` -> returns a list of the first `n` Lucas numbers

Quick hint:

```
L(0) = 2
L(1) = 1
L(n) = L(n-1) + L(n-2)
```

## Working with digits

Those are classic problems for using module division:

* Given an integer `n`, return the number of digits in `n` -> `count_digits(n)`
* Given an integer `n`, return the sum of all digits in `n` -> `sum_digits(n)`
* `factorial_digits(n)` -> for example, if we have `145`, we need to calculate `1! + 4! + 5!`

## Fibonacci number

Implement a function, called `fib_number(n)`, which takes an integer n and returns a number, which is formed by concatenating the first n Fibonacci numbers.

Examples:

```ruby
fib_number 3 == 112
fib_number 10 == 11235813213455
```

## Hack Numbers

A hack number is an integer, that matches the following criteria:

* The number, represented in binary, is a palindrome
* The number, represented in binary, has an odd number of 1's in it

Example of hack numbers:

* 1 is `1` in binary
* 7 is `111` in binary
* 7919 is `1111011101111` in binary

Implement the following functions:

* `hack?(n)` -> checks if `n` is a hack number
* `next_hack(n)` -> returns the next hack number, that is bigger than `n`

Few examples:

```ruby
hack? 1 == true
next_hack 0 == 1

hack? 21 == true
next_hack 10 == 21

hack? 8191 == true
next_hack 8031 == 8191
```

## Vowels in a string

Implement a function, called `count_vowels(str)`, which returns the count of all vowels in the string `str`.

__Count uppercase vowels aswell!__

The English vowels are `aeiouy`.

**Examples:**

```ruby
count_vowels "Python" == 2
count_vowels "Theistareykjarbunga" ==  8
count_vowels "grrrrgh!" == 0
count_vowels "Github is the second best thing that happend to programmers, after the keyboard!" == 22
count_vowels "A nice day to code!" == 8
```

## Consonants in a string

Implement a function, called `count_consonants str)`, which returns the count of all consonants in the string `str`.

__Count uppercase consonants as well!__

The English consonants are `bcdfghjklmnpqrstvwxz`.

**Examples:**

```ruby
count_consonants "Python" == 4
count_consonants "Theistareykjarbunga" == 11
count_consonants "grrrrgh!" == 7
count_consonants "Github is the second best thing that happend to programmers, after the keyboard!" == 44
count_consonants "A nice day to code!" == 6
```

## Palindrome Score

We denote the "Palindrome score" of an integer by the following function:

* `P(n) = 1`, if `n` is palindrome
* `P(n) = 1 + P(s)` where `s` is the sum of `n` and the `reverse of n`

Implement a function, called `p_score(n)`, which finds the palindrome score for n.

Lets see two examples:

* `p_score(121) = 1`, because `121` is a palindrome.
* `p_score(48) = 3`, because: 

1. `P(48) = 1 + P(48 + 84) = 132`
2. `P(132) = 1 + 1 + P(132 + 321 = 363)`
3. `P(363) = 1`.
4. When we return from the recursion, we get 3.

**Examples:**

```ruby
p_score 121 == 1
p_score 48 == 3
p_score 198 == 6
```

## Object palindomes

A palindrome is a word, phrase, number, or other sequence of characters which reads the same backward or forward. 

Implement the following function: `palindrome?(obj)` that checks if the given obj is palindrome.

**Examples:**

```ruby
palindrome? 121 == true
palindrome? 123 == false
palindrome? 'kapak' == true
palindrome? 'baba' == false
palindrome? 'azobi4amma4iboza' == true
```


## Prime numbers

The usual deal. Implement the following functions:

* Check if number is prime -> `prime?(n)`
* List the first `n` prime numbers -> `first_primes(n)`
* **OPTIONAL**: List the first `n` prime numbers, using the [Sieve of Eratosthenes](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes)

## Sum all numbers in a given string

You are given a string, where there can be numbers. Return the sum of all numbers in that string (not digits, numbers)

Examples:

```ruby
sum_of_numbers_in_string "1111" == 1111
sum_of_numbers_in_string "1abc33xyz22" == 1 + 33 + 22 = 56
sum_of_numbers_in_string "abcd" == 0
```

## Anagrams

Here is the explanation of what an Anagram is - <http://en.wikipedia.org/wiki/Anagram>

Implemenent the following functions:

* `anagrams?(a, b)` - returns true, if the string `a` is an anagram of `b`

## Is number balanced?

A number is called balanced, if we take the middle of it and the sums of the left and right parts are equal.

For example, the number `1238033` is balanced, because it's left part is `123` and right part is `033`.

We have : `1 + 2 + 3 = 0 + 3 + 3 = 6`.

A number with only one digit is always balanced!

Implement the function `balanced?(n)` that checks if `n` is balanced.

**Few examples:**

```ruby
balanced?(9) == True
balanced?(11) == True
balanced?(13) == False
balanced?(121) == True
balanced?(4518) == True
balanced?(28471) == False
balanced?(1238033) == True
```

## Zero Insertion

Given an integer, implement the function `zero_insert(n)`, which returns a new integer, constructed by the following algorithm:

* If two neighboring digits are the same (like `55`), insert a 0 between them (`505`)
* Also, if we add two neighboring digits and take their module by 10 (`% 10`) and the result is 0 - add 0 between them.

For example, if we have the number `116457`, result will be: `10160457`:

* 1 and 1 are the same, so we insert 0 between them
* `6 + 4 % 10 = 0`, so we insert 0 between them.

**Few examples:**

```ruby
zero_insert(116457) == 10160457
zero_insert(55555555) == 505050505050505
zero_insert(1) == 1
zero_insert(6446) == 6040406
```
