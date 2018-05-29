## Algebra Review and Notation

The reason for including a brief review of algebra is to make sure students are on the same wavelength in terms of mathematical
notation that will be used in this material. There are also a number of examples of how to use LaTeX and other mathematical
tools for presenting solutions to the problems in the text. Students do not need to use LaTeX to complete problems. However,
with the increasing use of technology in education and further into industry, it is a good idea to start using type setting
tools like LaTeX to write up work being done as students work through this material. Another thing the reader may be able to
pick up is how to include graphics in Github repositories and/or in documents.

Note that the review provided in this material is NOT a thorough discussion algebra. Only content needed for the material in 
this repository is presented. If a reader or student is in need of more, it is suggested that another more thorough source 
should be found. That is, find the book you used to learn algebra or take/retake a course in algebra.

Now to the review of algebra.

### Definition of Relations and Functions

One of the first things students see in any basic algebra course is the definition of a function. In particular, students will
see functions in the form of polynomials, [trigonometric](https://jvkoebbe.github.io/math4610/basicReview/trigonometry)
functions, exponential and logarithmic functions.

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

The reason that programmers should be interested in the simple arithmetic operations is in the amount of error that may occur
in these binary opertations due to finite representation of numbers. For example,...
