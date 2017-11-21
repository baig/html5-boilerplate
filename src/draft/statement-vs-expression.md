---
title: Statement versus Expression
author: Wasif Hasan Baig
date: 2017-11-06T15:43:48+08:00
lastmod: 2017-08-31T15:43:48+08:00
---


What is the difference between these two code blocks

```
if (condition) {
    log("true");
} else {
    log("false");
}
```

and this

```
let bool = if (condition) {
    true
} else {
    false
}
```

the first one is a statement and the second one is an expression.

Expression always return values, primitive or composite.

Expression produce *values*.
Statements produce *effects*.



What is a statement? How do you define it?
