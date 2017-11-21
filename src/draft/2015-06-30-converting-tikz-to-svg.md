---
title: Converting Tikz LaTeX pictures to SVG for inclusion in HTML Files
author: Wasif Hasan Baig
---

In the main document, include `\usepackage{standalone}`.

Draw your tikz picture in a separate file e.g. 'picture.tex'.

In the main document, include the standalone tikz picture like this: `\input{picture.tex}`

You can use `convert` class option to standalone in the standalone tikz picture
file to convert the tikz picture to an image file.
This conversion requires an external image converter.

To execute an external program, the `-shell-escape` option must be used for the
compiler executable, e.g. `pdflatex -shell-escape filename`.
Without this option no conversion is possible.