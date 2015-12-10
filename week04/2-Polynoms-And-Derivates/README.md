# Polynomials and Derivates

## Polynomials

In math, [a polynomial](https://en.wikipedia.org/wiki/Polynomial) is a function, defined like that:

```
f(x) = Cn*x^n + Cn-1*x^n-1 + ... + c1*x^1 + c0
```

where:

* `Cn` to `C0` are coefficients. **We are going to work with positive integers for coefficients.**
* `x` is the variable and `x^n` means x to the power of `n`
* If the given coeff is equal to `1`, it can be omitted.

Here are few examples:

```
f(x) = 2x^3 + 3x + 1
g(x) = x^3 + x^2 + x
```

## Derivatives

A derivative of a polynomial function is easily calculated. The only thing that we need to know is how to take derivative from each member of the polynomial function.

Here is the general rule for taking derivative of a function in the following form:

```
f(x) = c * x^n
f'(x) = n * x * x^(n - 1)
```

Where `c` and `n` are positive integers and `f'(x)` denotes the derivative of `f(x)`

There are two corner cases:

Taking derivative of `x` to the power of 1.

```
f(x) = c * x
f'(x) = c
```

and taking derivatives of constants:

```
f(x) = c
f'(x) = 0
```


So if we want to take the derivative of a polynomial function, we just apply that rule to every member of the polynom:

```
f(x) = 2x^3 + 3x + 1
f'(x) = 6x^2 + 3
```

## Your task

Using your OO knowledge, implement a program that takes a string, representing a polynomial function and returns / prints the derivative of that polynomial function.

Few examples:

```
$ ruby '2x^3+x'
Derivative of f(x) = 2*x^3 + x is:
f'(x) = 6*x^2 + 1
```

```
$ ruby '1'
The derivative of f(x) = 1 is:
f'(x) = 0
```

```
$ ruby 'x^4+10x^3'
The derivative of f(x) = x^4 + 10*x^3 is:
f'(x) = 4*x^3 + 30*x^2
```

## Hints

Take your input via `ARGV[0]`. Thing about the different part of your program.

Implemented it in such a way that you are not dependant only on console input / output.

**Write tests in order to validate your code.**
