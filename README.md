# Project 01: Calculator Exercise

Build a calculator command line interface (CLI) that allows a user to perform simple arithmetic. The program should ask for an operation (addition, subtraction, multiplication, division) and two numbers, then give the result of applying the operation to the two numbers.

## Project Baseline
- Fork this repository to your personal Github
- Set the default branch of your fork to be your personal branch.
- Create a Ruby program called `math.rb`
- Commit `math.rb` to your personal branch and push it to your fork on Github.

## Primary Requirements
- The program should accept both the name (`add`) and the symbol (`+`) for each possible operation.
- Print out the formula in addition to the result, i.e. `2 + 2 = 4`
- Add support for computing exponents (`2^4 = 2 * 2 * 2 * 2 = 16`).
- Add support for the modulo operator (`10 % 3 = 1`).

## Optional Enhancements
- Gracefully handle unexpected user input:
  - What happens if the user input is `nil` (i.e., the user just pressed enter)?
  - What happens if the user tries to add `hotdog` to `elephant`?
- Make your program know when it needs to return an _integer_ versus a _float_.
- Add support for parentheticals, i.e. `10 / (5 + 5) = 1`.
