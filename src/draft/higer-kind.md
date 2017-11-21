---
title: Higher Kinds
author: Wasif Hasan Baig
---




"A function that is not pure, total, and parametric is a bug and must be fixed." @rightfold

  - Total vs partial function
  - Pure vs impure function
  - Parametric vs non-parametric function
  




Ordinary functions abstract values from values.

Parameteric polymorphism allows us to abstract types from values.



Example: Values -> Values


The concrete expression: 2:Int + 3:Int

The value 2 of type integer added to the value 3 of type integer will give you
the value 5 of type integer.

The values and types in the above expressions are fixed at writing and will
remain so.

Abstraction Level 1
The functionalized version: \x:Int . x + 3:Int

If we substitute 2 for x in the above expression, we'll get 5:Int.
If we substitute 5 for x in the above expression, then we'll get 8:Int.

Note that the result of the expression depends on the concrete value bound to
the the variable x.
A very common way of expressing this fact his is to say that the result of the above
expression is a function of the variable x.

Even though the functionalized version can be given different values but the
type is fixed and is always an integer.

What if we can abstract the type?

Abstraction Level 2
The polymorphic version: \x:T . x + 3:Int

T can Int, String or any other type that you can think of.

What if we substitute "hello":String in the above expression?

    "hello"String + 3:Int

It results in a malformed expression.

So, we have to abstract both variables

So, the polymorphic version should be: \x:T \y:T . x + y

Now if we substitute T = Int, the above expression would be

    \x:Int \y:Int . x + y

Then if we bind x to 3 and y to 5, the above expression would become

    3:Int + 5:Int

if we substitue T = String:

    \x:String \y:String . x + y
    
now if we bind x to "Hello" and y to "World"

   "Hello":String + "World":String

Note one more thing, another requirement to be imposed on the expression is that the operation + must
be defined for the given type.




"In most programming languages, functions are first class values"
What does it mean for a function to be first class?
  - can be stored in variables
  - can be passed to functions as values
  - ...
  
In statically typed PLs, polymorphic functions are not first class.
You cannot pass polymorphic function to another function and then apply it
polymorphically inside the function.
In static PLs, you have to monomorphise the polymorphic function before passing
it in to the another function.
Higher rank types make polymorphic functions first class, just like regular
monomorphic functions.
This is also called "Rank-n polymorphism" or "First-class polymorphism".
BUT they make complete type inference undecidable.



Functions from:
  - value -> value (ordinary/regular function)
  - type -> value (polymorphic function—Parametric polymorphism)
  - type -> type (Type-Level Function—Type operators)
  - value -> type (Dependent Function)

The term polymorphism is autological (meaning the word "polymorphism" is itself polymorphic)

Poly
  - Parametric
  - Ad hoc
  - Subtype

Hello my name is Wasif.



Hello my name i sWasif.


Hello my name is Wasif.


ordinary function can take in 