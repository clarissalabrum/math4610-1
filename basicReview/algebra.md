## Algebra Review and Notation

### Definition of Relations and Functions

### Inverse Functions

### Implicit versus Explicit Relationships

In basic algebra courses

Example: Newton's Method

### Algebraic Operations

It may seem a bit trivial for this review to include basic binary operations. However, later in this text, the use of binary
operations must be done with care in some circumstances. Due to finite precision of arithmetic when computers, graphing
calculators, and any other digital device, errors will be generated when numerical operations are applied.

#### Sets of Numbers

As a starting point, we should define sets of numbers that will be used in this text. There are several sets of numbers that
are important in this course. 

#### The Natural Numbers

The natural numbers or counting numbers are used in the development of algorithms in a number of ways. The natural numbers is 
important in developing algorithms that require iterations in a basic computation. For example, Newton's method requires a loop 
over computing linear approximations to roots of nonlinear functions. One formula for the application of Newton's method is:

Note that the subscript, k, is chosen to be in the sequence of natural numbers, k=1, 2, 3, ... The reader should be aware that
the application of Newton's method could go on forever. As a thought experiment, if Newton's method is started from a rational
number and the root we are trying to find is an irrational number, Newton's method will never produce an exact value. Newton's
method will at best produce an approximation of the root.

The takeaway from the example above, is that since we will only have a finite amount of time to produce a solution to any
mathematical problem, the set of natural numbers is larger than can be used for practial purposes.

Something about computer languages all have basic types.

    int m, n, q;

in C, C++, Java, Python and other languages specifies that m, n, and q are integers. In fortran the syntax is:

    integer m, n, q

Most high level programming languages have a number of variants of the designation for integer variables. For example,

    long int m, n, q;
    int r, s, t;
    short int i, j, k;

use different amounts of storage. This is important in some applications due to the finite amount of storage that exists on
any computer. The amount of storage may be large for High Performance Computing resources. However, the amount of storage is
still finite. Therefore, as your codes begin to reach storage limits, it may be nevessary to use different lengths integers.

#### The Rational Numbers

The next set of numbers that will be used in algorithms is the set of rational numbers...

#### The Real Numbers

The solution of most mathematical problems requires working in the set of real numbers...

#### The Complex Numbers

Occasionally, algorithms will produce complex numbers. For example, the eigenvalue problem in linear algebra requires
finding all roots of the characteristic polynomial associated with a square matrix. All polynomials can be factored into
linear factors or quadratic factors that cannot be factored over the real numbers. The result is that the quadratic factors
produce complex conjugate pairs of eigenvalues. Another example involves the computation of solutions of constant
coefficient, linear, ordinary differential equations. Finally, applications such as nonlinear optics require the use of
complex numbers in the definition of solutions as a part of the modeling process.

#### Addition, Subtraction, Multiplication, and Division

The reason that 
