## Sources of Error

Mathematical models are routinely translated into mathematical problems. As examples, the mathematical problem may take the form
of a solution of a linear system of equations or possible a linear algebra problem of finding an eigenvalue and associated with
the eigenvalue or an optimization problem or other types the problem. In most cases, the problems generated are too complicated
to solve using pencil and paper. Instead algorithms are created that are in turn translated into computer programs. The algorithms
used to create solutions for the mathematical problems using computers can only approximate a solution of a mathematical problem.
There are a number sources of errors in the process of moving from a real world problem to the approximate solution that a
computer program produces.

The following is a list of sources of error that must be addressed in this process.

1. [Measurement Errors:](https://jvkoebbe.github.io/math4610/chapter02/measurementError) This section will give a brief discussion 
   of how errors that occur in the course of doing physical measurements. For example, if measurements of the depth of a river 
   system are needed in simulations of river flow, one should expect that the measurements are as accurate as the device measuring 
   the depth. Computational mathematicians cannot control measurement errors. However, measurement errors must be accounted for in 
   any computer code written to solve real world problems.
2. [Truncation Error:](https://jvkoebbe.git.io/math4610/truncationError) Truncation error occurs when some mathematical expression
   involving an infinite number of terms or equations is approximated by a finite number of terms or equations. A particularly
   appropriate example of truncation error is when an infinite series (e.g, Taylor series) is approximated by a finite number of
   terms of the series. Another example occurs when a function, say $$e^x$$ is approximated by a finite series
   
   e^x \approx 1 + x 
   
3. [Finite Representation of non-binary numbers:](https//jvkoebbe.git.io/math4610/numberRepresentation) Computers store numerical
data in binary, octal, or hexidecimal forms. The decimal values we see on a monitor or a printed version of output are
translations from binary values to decimal values. For example, the number 1/3 requires an infinite number of digits in a
binary representation. The actual value can be written as: (1/3)_2 = 0.01010101010..... where the "...." means the pattern
repeats forever.

Write up a version of the eigensystem problem where the representation is an issue.........

4. [Loss of Significant Digits:](https://jvkoebbe.git.io/math4610/floatingPointOps)

[previous](https://jvkoebbe.github.io/math4610/chapter01/intro) |
[next](https://jvkoebbe.github.io/math4610/chapter02/measurementError)
