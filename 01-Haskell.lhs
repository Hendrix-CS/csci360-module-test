Module 01: Introduction to Haskell
==================================

Welcome to your first module for CSCI 360, Programming Languages!  In
this course we will be taking a somewhat different approach than you
may be used to.  Although there will be some traditional lecturing,
much of your time in class will be spent working in teams to complete
*modules* like this one.  Each module will guide you through a
learning process on a particular topic.  However, although the modules
themselves will form the primary framework for your learning, there
will also be ample opportunity to interact with me and with your
classmates.

Please read and follow the instructions below, and fill in answers and
information as requested.  The completed module can be [turned in
electronically via this Google
form](https://forms.gle/KD1qb1atQ5qKQYZn9).  Each team should turn in
only one completed module for the whole team.

Questions or instructions that require some sort of action or response
are preceded by an asterisk * (or a bullet, if you are reading the
HTML version).  This file is written using *Markdown* syntax.  You can
[read about Markdown here](https://daringfireball.net/projects/markdown/syntax).
[pandoc](http://pandoc.org/) can be used to convert Markdown to HTML.

Remember to use complete sentences and correct punctuation when
filling in your responses!

Get to know your team
---------------------

The person who is typing is the "driver" (for now).  The driver's
responsibility is to operate the computer, being careful to listen to
input from their teammates.

* Write the name of your driver below:


Note that the role of driver, and the other roles described below, are
not fixed: they will vary from class to class and even within the same
class.

The other team member(s) are "navigators".  Their responsibility is to
give input to help guide the driver, and to carefully check any code
the driver writes.  Navigators may also use another computer or device
to look up reference information, but the team **should only be working
on one copy of the module**.

* Write the name of your navigator(s) here:


If there is only one navigator, they also play the role of "reporter".
If there are multiple navigators, for today you can decide amongst
yourselves who should play the role of reporter.  The reporter's
responsibility is to be ready to share the ideas, answers, and
conclusions of your team with other teams and with the whole class.


* The driver should ask the navigator (if your team has more than one
  navigator, pick one) the following questions, and record their
  answers below.  If necessary, everyone can pause for a few minutes
  to think through their answers to the questions.

    * What programming language are you most familiar with?
    * Name one thing you like and one thing you dislike about that
      language.


* Now let someone else be the driver, and repeat the above process.

    * What programming language are you most familiar with?
    * Name one thing you like and one thing you dislike about that
      language.



* If you have three people on your team, repeat the process again for
  the last driver.

    * What programming language are you most familiar with?
    * Name one thing you like and one thing you dislike about that
      language.


At this point everyone should have had a chance to type, and you
should have recorded everyone's responses to the questions.  The
original driver can now resume their original role.


Introduction to Haskell
-----------------------

In this module you will focus on learning some of the basics of the
Haskell programming language.  If you already know some Haskell, you
should focus on helping your partner(s) understand all the material in
this module.  However, keep in mind that people learn best by doing,
not by being told.  **The driver should be whoever has the *least*
experience with Haskell.**

This file is a "literate Haskell document": only lines preceded by >
and a space (see below) are code; everything else (like this
paragraph) is a comment, formatted using Markdown syntax.  Literate
Haskell documents have an extension of `.lhs`, whereas non-literate
Haskell source files use `.hs`.

GHCi
----

* Run `ghci` (or `stack ghci`) from a command prompt (or from the
  "Shell" tab in `repl.it`).  At the
  resulting prompt, type `:help`.

* Find the command to exit `ghci`.  What is it?  Exit `ghci` now.

* Using the `cd` command at the shell prompt, change to the directory
  containing this file, `01-Haskell.lhs` (if using `repl.it`, you
  should already be in the correct directory).

* Now start `ghci` again.  Find the command to load a module.  What is
  it?  Load this file, `01-Haskell.lhs`, into `ghci`.  Note that by
  default, `ghci` will look for files in the same directory in which it
  was started.

Hint: to kill a runaway `ghci` evaluation, use Ctrl+C.

Basic Haskell declarations
--------------------------

Now consider the following Haskell code.

> i :: Int
> i = -35
>
> n :: Integer
> n = 25
>
> c :: Char
> c = 'Z'
>
> b :: Bool
> b = True
>
> s :: String
> s = "Hello, world!"
>
> f :: Integer -> Integer
> f n = 2*n + 1
>
> g :: Integer -> Integer -> Integer
> g m n = (m - n)*(m + n)
>
> -- This is a comment
> {- So
>    is
>    this -}
>
> -- Uncomment me:
> -- i = 12

* Enter `:type n` at the `ghci` prompt.  What does the `:type` command
  do?

* What do you think `::` means?

* What do you think `=` means?

* What do you think `->` means?

* Find the `ghci` command to reload the current module.  Uncomment the
  line `i = 12` above, save this file, and reload.  What happens?

* Does this change your answer to the question about what `=` means?

Arithmetic
----------

* At the `ghci` prompt, type each of the following expressions, and
record the result.  Feel free to experiment with other expressions as
well.

    ```{.haskell}
    3 + 2
    19 - 27
    div 19 3
    19 `div` 3
    mod 19 3
    19 `mod` 3
    19 `divMod` 3
    7 ^ 222
    (-3) * (-7)
    2*i + 3
    i + n
    ```

* Explain what happens when you evaluate `i + n`.

* What are the smallest and largest possible `Int` values?

* What are the smallest and largest possible `Integer` values?

(Haskell has floating-point values too, but we won't use them much in
this course.)

Booleans
--------

* Find out the syntax for each of the following operations in Haskell:

    - Boolean operations: and, or, not

    - Comparison: equal, not equal, less than, greater than, less or
      equal, greater or equal

    - if-expressions

  Of course, be sure to cite any resources you use!


* Play around with the operators you discovered and try them on some
  examples. Record three of your most interesting experiments,
  the result, and what you learned from each.


Pairs
-----

* Type `(n,c)` at the `ghci` prompt.  What is the result?


* What is the type of `(n,c)`?


* What is the result of `fst (n,c)`?


* What is the result of `snd (n,c)`?


* What is the type of `fst`?  What does it do?


Values like `(n,c)` are called *pairs*, or more generally,
*tuples*. (Haskell also has 3-tuples, 4-tuples, ... but we will not
use them.)


* Define `e` such that `fst (fst (snd (fst e))) == 6`.


Functions
---------

Evaluate the following expressions:

```{.haskell}
f 6
f 8
g 5 4
g 2 3
```

A *function* takes one or more input values and produces a single
output value.

* What is the Haskell syntax for applying a function to a single
  argument?

* What is the Haskell syntax for applying a function to multiple
  arguments?

* Write a function which takes two `Integer` values as input and
  returns `True` if and only if the first is greater than twice the
  second.  What is the type of your function?


Pattern matching
----------------

> wub :: Integer -> Integer
> wub 0 = 1
> wub n = n * wub (n-1)
>
> dub :: Integer -> Integer
> dub 0 = 0
> dub 1 = 1
> dub n = dub (n-1) + dub (n-2)
>
> flub :: (Integer, Integer) -> Integer
> flub p = fst p + 2 * snd p
>
> gub :: (Integer, Integer) -> Integer
> gub (x,y) = x + 2*y

* Evaluate `wub 0`, `wub 1`, and `wub 5`.

* Explain in words what `wub` does.

* What does the line `wub 0 = 1` mean?

* What do you think would happen if the lines `wub 0 = 1` and
  `wub n = n * wub (n-1)` were switched? Make a guess *before* trying it, and
  record your guess here.

* Now try it.  What happens?  Why?

* What happens when you evaluate `wub (-3)`?  Why?

* Evaluate `wub (3+1)` and `wub 3+1`.  Can you explain the
  difference?

* What does `dub` do?

* What happens if the lines `dub 0 = 0` and `dub 1 = 1` are switched?

* Call `flub` and `gub` on some example inputs.  Record your results
  here.  Do you notice a difference between the behavior of `flub` and
  `gub`?

* Explain the difference between `flub` and `gub`.

* Which do you prefer?  Why?

Guards
------

> hailstone :: Integer -> Integer
> hailstone n
>   | even n    = n `div` 2
>   | otherwise = 3*n + 1

* Try evaluating `hailstone` on some example inputs; record them here.

* Try evaluating `even` on some example inputs.  What does the `even`
  function do?

* How is `otherwise` defined? (You'll have to Google this one.)

* Explain the behavior of `hailstone`.

Practice
--------

* Write a function `inRange` which takes two inputs, a pair of
  `Integer`s and an `Integer`, and checks whether the `Integer` is in
  between the elements of the pair (inclusive).  For example,
  `inRange (2,4) 2`, `inRange (2,4) 3`, and `inRange (2,4) 4` should all be
  `True`, whereas `inRange (2,4) 6` should be `False`.  Note that
  `inRange (4,2) 3` should also be `True`.
