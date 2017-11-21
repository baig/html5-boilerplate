---
title: Closure versus Combinator
author: Wasif Hasan Baig
date: 2017-11-06T15:43:48+08:00
lastmod: 2017-08-31T15:43:48+08:00
---

Source: https://wiki.haskell.org/Closure

A closure, the opposite of a combinator, is a function that makes use of free variables in its definition. It 'closes' around some portion of its environment. for example

f x = (\y -> x + y)
f returns a closure, because the variable x, which is bound outside of the lambda abstraction is used inside its definition.

An interesting side note: the context in which x was bound shouldn't even exist anymore, and wouldn't, had the lambda abstraction not closed around x.





Source: https://doc.rust-lang.org/book/second-edition/ch13-01-closures.html

Rust’s closures are anonymous functions that you can save in a variable or pass as arguments to other functions. You can create the closure in one place, and then call the closure to evaluate it in a different context. Unlike functions, closures are allowed to capture values from the scope in which they are called. We’re going to demonstrate how these features of closures allow for code reuse and customization of behavior.