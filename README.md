# Calculator Exercise

## At a Glance

- Build a calculator command line interface (CLI) that allows a user to perform simple arithmetic.
- Individual, [stage 1](https://github.com/Ada-Developers-Academy/pedagogy/blob/master/rule-of-three.md#stage-1) project
- Due before class, **DATE HERE**

## Baseline
The program should ask the user for an operation (string or numeric symbol) and two numbers.

## Primary Requirements
The program should use the input operation and two numbers to provide the result of applying the operation to the two numbers.
- The program should have support for these four operations: addition, subtraction, multiplication, and division.
- The program should accept both the name (`add`) and the symbol (`+`) for each possible operation.

## Test & Verify

Before you submit your work it's important to test your program and ensure it's working properly.  Later we will teach you nifty ways to automate this testing, but for now we'll do things the old fashioned way.

To make sure your program works you will need to run your program and ensure:
*  The program adds numbers with both `add` and `+`
*  The program subtracts numbers with both `subtract` and `-`
*  The program adds numbers with both `multiply` and `*`
*  The program adds numbers with both `divide` and `/`
*  The program handles divide when attempting to divide by zero.
*  The program handles erroneous input.  For example the user might enter `clown` when asked to enter a number.
   *  The program also needs to handle erroneous operators.



## Optional Enhancements
- Print out the formula in addition to the result, i.e. `2 + 2 = 4`
- Add support for computing exponents (`2^4 = 2 * 2 * 2 * 2 = 16`).
- Add support for the modulo operator (`10 % 3 = 1`).
- Gracefully handle unexpected user input:
  - What happens if the user input is `nil` (i.e., the user just pressed enter)?
  - What happens if the user tries to add `hotdog` to `elephant`?
- Make your program know when it needs to return an _integer_ versus a _float_.
- Add support for parentheticals, i.e. `10 / (5 + 5) = 1`.
