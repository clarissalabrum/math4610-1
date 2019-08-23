# Math 4610 Fundamentals of Computational Mathematics  - Lecture 2

In this lesson, you will be introduced to simple algorithms for determining
"machine epsilon" to quantify computer number precision. The output of these
algorithms serve as a warning about using computers in the solution of real
mathematical problems. In adition to finite precision in the representation of
numbers on a computer, most approximation algorithms will require large numbers
arithmetic operations to determine an appropriate approximation.

resentation of round off error and the analysis of how errors accumulate in
complex computations. One way to proceed is through interval analysis applied to
numbers that are approximated in machine arithmetic. A simple 
example of how to build a shared library will also be discussed. This is an
important skill to have in computational mathematics.

<hr>

## Content Items:

  1. **Building a Repository on Github:** - We will discuss how to create a
     general repository to start class. The idea is that students should create
     the math4610 repository in this part of the lecture.
     [> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_02/md/newrepository_primer)
     | [(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_02/pdf/newrepository_primer.pdf)

  2. **Homework repositories on Github:** - We will discuss how to create a
     homework repository that each student must have to complete homework. The
     homework repository should be a private repository with you instructor as
     the only collaborator. Homework will be graded by first cloning the
     repository and then your constructor can create a branch for grading. This
     can be repeated by creating a pull request on the repository.
     [> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_02/md/homework_description)
     | [(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_02/pdf/homework_description.pdf)

  3. **Practical Intuition about Machine Precision:** Some simple examples of
     how computers represent numbers are given that indicate that almost all of
     the work done by computers is an approximation. Finite representation in a
     binary number system has significant limitations. Since this is what we
     have to use, it is important to understand the implications of finite
     number representation. 
     [> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_02/html/floatingPointRepresentation)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_02/pdf/floatingPointRepresentation.pdf)

  4. **Code for Determining Machine Precision:** A simple algorithm for
     determining the precision for number representation will be covered. Two
     different versions of the code will be presented that determine single and
     double precision for your computer. Note that these two codes will be used
     to show students how to build a shared library.
      [> > go there](https://jvkoebbe.github.io/math4610/lecture_02/html/maceps)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_02/pdf/maceps.pdf)

  5. **Roundoff Errors and Arithmetic Operations:** - Every computation done
     combines two numbers that in general are only approximations of the exact
     values. The errors in some cases result in catastrophic cancellation that
     result in output that is garbage. We will look at the sum, difference,
     product, and ratio of numbers. Note that all operations involve some
     combination of these four operations.
     [> > go there](https://www.github.com/jvkoebbe/math4610/lectures/lecture_02/homework)
     | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_02/pdf/homework.pdf)


  6. **Floating Point Representation of Numbers on Computers:** The IEEE
     standard for number representation will be covered. Number precision for
     32-bit and 64-bit systems will be covered. 

  7. **Wrap up and Questions:** If there is time and anyone has questions about
       the lecture, these will be addressed.


---

[prev](https://jvkoebbe.github.io/math4610/lectures/lecture_01/md/lecture_01) |
[toc](https://jvkoebbe.github.io/math4610/lectures/toc_lectures) |
[next](https://jvkoebbe.github.io/math4610/lectures/lecture_03/md/lecture_03)

---
