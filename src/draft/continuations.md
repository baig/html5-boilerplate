Problems
========

- there is a concept of returning from a function. You go in and then you come
  out.

- You call a function, you go inside a function and return from it  
When you call a function, you "go in" and then you "come out".
`return` statement takes you out of the function.

- The caller relinquish controls of what happens next and the called function
  always decides what to do next.

- It does not let the caller decide what should happen next.
  
- The control flow is implicit.

- it's pushing a stack on top and then popping it

- 

## Continuations

A continuation is just a function that you hand over to the callee along with
other arguments to tell what to do next.

- They let the `caller` decide what should happen next.

- They make the control flow explicit.

- somewhat analogous to visitor pattern

## Continuation Passing Style
"Using continuations like this leads to a style of programming called
"continuation passing style" (or CPS), whereby every function is called with an
extra "what to do next" function parameter."

You end up with a chain of functions.

"In the direct style, there is a hierarchy of functions. The top level function
is a sort of "master controller" who calls one subroutine, and then another,
deciding when to branch, when to loop, and generally coordinating the control
flow explicitly."

"In the continuation passing style, though, there is no "master controller".
Instead there is a sort of "pipeline", not of data but of control flow, where
the "function in charge" changes as the execution logic flows through the pipe."

"If you have ever attached a event handler to a button click in a GUI, or used
a callback with `BeginInvoke`, then you have used this style without being aware
of it. And in fact, this style will be key to understanding the async workflow,
which I'll discuss later in this series."


"Complete me Later"

You generally use continuations when you are programming something, but you want somebody else to complete it. Common reasons include:
You are programming a framework with callbacks that users supply
You are defining a custom map engine for game players to program
You are lazy


---

"Rather than return the result of a function, pass one or more Higher Order
Functions to determine what to do with the result.
Yes, direct sum like things (or in generally, case analysis, managing cases,
alternatives) can be implemented in CPS by passing more continuations."





## References

- https://fsharpforfunandprofit.com/posts/computation-expressions-continuations/
- https://wiki.haskell.org/Continuation
- https://en.wikipedia.org/wiki/Continuation
- http://www.haskellforall.com/2012/12/the-continuation-monad.html



