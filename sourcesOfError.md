## Sources of Error

Mathematical models are routinely translated into mathematical problems. As examples, the mathematical problem may take the form
of a solution of a linear system of equations or possible a linear algebra problem of finding an eigenvalue and associated with
the eigenvalue or an optimization problem or other types the problem. In most cases, the problems generated are too complicated
to solve using pencil and paper. Instead algorithms are created that are in turn translated into computer programs. The algorithms
used to create solutions for the mathematical problems using computers can only approximate a solution of a mathematical problem.
There are a number sources of errors in the process of moving from a real world problem to the approximate solution that a
computer program produces.

The following is a list of sources of error that must be addressed in this process.

1. [Finite Representation of non-binary numbers:](https//jvkoebbe.git.io/math4610/numberRepresentation) Computers store numerical
data in binary, octal, or hexidecimal forms. The decimal values we see on a monitor or a printed version of output are
translations from binary values to decimal values. For example, the number 1/3 requires an infinite number of digits in a
binary representation. The actual value can be written as: (1/3)_2 = 0.01010101010..... where the "...." means the pattern
repeats forever.

2. [Loss of Significant Digits:](https://jvkoebbe.git.io/math4610/floatingPointOps)

3. [Truncation Error:](https://jvkoebbe.git.io/math4610/truncationError)
