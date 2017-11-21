---
title: Terminology Breakers
author: Wasif Hasan Baig
---

# Terminology Breakers

The kind of articles where we demystify the mathematical symbolism.


Consider the expression:

```
2 + 4;
```

Abstracting the above expression by introducing a bound variable.

```js
// abstracting the expression 2 + 4
function addFour(x) {
    return x + 4;
}
```

In books, you'll see this process being represented as:

$$(x)addFour = x + 4$$

OR

$$\lambda x.x + 4$$

$$addFour(x) = x + 4$$

This is called "abstraction" which just means that you are generalizing the
expression.

Notice you can also, abstract the second variable.






```js
function sum(x, y) {
    return x + y;
}
```




$$\lambda x.f = (x)f \quad abstraction$$
  
$$f(x) = (\lambda y.f)x \quad application$$
  
Demystify it using JavaScript: the world most (mis)understood language.
And Don't use esoteric languages like Haskell.
