# Math 4610 Fundamentals of Computational Mathematics  - Lecture 2

<hr>

In this lesson, you will be introduced to simple algorithms for determining
"machine epsilon" to quantify computer number precision. The output of these
algorithms serve as a warning about using computers in the solution of real
mathematical problems. In addition to finite precision in the representation of
numbers on a computer, most approximation algorithms will require large numbers
arithmetic operations to determine an appropriate approximation. How to measure
error in ccmputations and sources of error will be presented. Note that most
sources of error must just be taken as a part of the process. However, in
computational science there are a few sources error that can be addressed by
choosing or developing stable algorithms that will provide best approximations
to the exact value. 

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
     [> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_02/html/error_practical_intuition.html)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_02/pdf/error_practical_intuition.pdf)

  4. **Code for Determining Machine Precision:** A simple algorithm for
     determining the precision for number representation will be covered. Two
     different versions of the code will be presented that determine single and
     double precision for your computer. Note that these two codes will be used
     to show students how to build a shared library.
      [> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_02/md/maceps)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_02/pdf/maceps.pdf)

  5. **Measuring Errors - Absolute and Relative Errors:** The usual way to
     measure errors is either the absolute value of the difference between an
     approximation and the exact value. Relative or percent error gives a
     percent error relative to the exact value. These concepts will be defined
     and examples will be given. It should be noted that in many algorithms,
     how error is measured will determine stopping criteria for the algorithms.
      [> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_02/html/absolute_relative_error.html)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_02/pdf/absolute_relative_error.pdf)

  6. **Types of Error:** There a number of sources of errors that are
     encountered in scientific computation. A list of the types of errors will
     be covered in this part of the lecture.
      [> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_02/html/type_of_error.html)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_02/pdf/types_of_error.pdf)

  7. **Wrap up and Questions:** If there is time and anyone has questions about
       the lecture, these will be addressed.


The next deal is to make this damn thing go to the correct place.


---

[prev](https://jvkoebbe.github.io/math4610/lectures/lecture_01/md/lecture_01) |
[toc](https://jvkoebbe.github.io/math4610/lectures/toc_lectures) |
[next](https://jvkoebbe.github.io/math4610/lectures/lecture_03/md/lecture_03)

---
