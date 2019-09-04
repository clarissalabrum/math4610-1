# Math 4610 Fundamentals of Computational Mathematics  - Lecture 3

The accumulation of round off error can be a serious problem in computational
mathematics. The idea in this lecture is to focus on errors that occur in every
arithmetic operation performed by a computer.
Some simple examples of how to
mitigate inexact arithmetic interval analysis will
be covered. Documentation of algorithms and computer codes is essential to any
successful attempt to write reusable code. Finally, we will introduce the
general mathematical problem of finding the roots of a nonlinear function of a
single variable.

<hr>

## Content Items:

  1. **Measuring Errors - Absolute and Relative Errors:** The usual way to
     measure errors is either the absolute value of the difference between an
     approximation and the exact value. Relative or percent error gives a
     percent error relative to the exact value. These concepts will be defined
     and examples will be given. It should be noted that in many algorithms,
     how error is measured will determine stopping criteria for the algorithms.
      [> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_03/html/absolute_relative_error.html)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_03/pdf/absolute_relative_error.pdf)

  2. **Types of Error:** There a number of sources of errors encountered in
     scientific computation. A list of the types of errors will be covered in
     this part of the lecture.
      [> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_03/html/type_of_error.html)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_03/pdf/types_of_error.pdf)

  3. **Building a Shared Library for Reusing Code:** An important skill that
     computational mathematicians should learn is to take relatively small codes
     and turn these into reusable object files. These can be collected into a
     shared library. A shared library can be linked to by other programs from
     this point on. Note that the equivalent of a shared library in a Windows
     setting is called a DLL.
       [> > go there](https://jvkoebbe.github.io/math4610/lecture_03/md/shared_library_example)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_03/pdf/git_primer.pdf)

  4. **Wrap up and Questions:**  If there is time and anyone has questions about
     the lecture, these will be addressed.






















  2. **Roundoff Errors and Arithmetic Operations:** - Every computation done
     combines two numbers that in general are only approximations of the exact
     values. The errors in some cases result in catastrophic cancellation that
     result in output that is garbage. We will look at the sum, difference,
     product, and ratio of numbers. Note that all operations involve some
     combination of these four operations.
     [> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_02/md/precision_00)
     | [(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_02/pdf/precision_00.pdf)

     * [**Intro:**](https://jvkoebbe.github.io/math4610/lectures/lecture_02/md/precision_00)
     * [**Part 1:**](https://jvkoebbe.github.io/math4610/lectures/lecture_02/html/precision_01.html)
     * [**Part 2:**](https://jvkoebbe.github.io/math4610/lectures/lecture_02/html/precision_02.html)
     * [**Part 3:**](https://jvkoebbe.github.io/math4610/lectures/lecture_02/html/precision_03.html)
     * [**Part 4:**](https://jvkoebbe.github.io/math4610/lectures/lecture_02/html/precision_04.html)

  3. **Testing the Codes in a Shared Library:** We will go over how to write a
     code that uses the object routines in a shared library. Linking a main
     code to a library will be covered.
       [> > go there](https://jvkoebbe.github.io/math4610/lecture_03/html/finite_precision)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_03/pdf/git_primer.p

  4. **Analytic Fixes for Cancellation Errors:** In some cases, the arithmetic
     operations needed in an algorithm can be rearranged through the use of
     some mathematical manipulation to obtain an equivalent algorithm that is
     more stable. A couple of examples will be treated.
       [> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_02/md/git_primer)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_02/pdf/git_primer.pdf)

  5. **An Introduction to Interval Analysis:** Interval analysis involves doing
     arithmetic on intervals instead of numbers. This will be made a bit more
     clear in the lecture. Sums, differences, products, and quotients are all
     treated within the structre of intervals. 
       [> > go there](https://jvkoebbe.github.io/math4610/lecture_02/html/finite_precision)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_02/pdf/git_primer.pdf)

  4. **Documentation of Reusable Code:**  Each student will need to write a
     software manual for the algorithms implemented in class. A template for the
     software manual has been created by your instructor using Jekyll on Github.
     Students are required to use the template and can look at the template and
     download a copy of the template for their own use.
       [> > go there](https://jvkoebbe.github.io/math4610/lecture_02/html/finite_precision)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_02/pdf/git_primer.pdf)

  5. **Statement of the Root Finding Problem:**  Many applied mathematics
     problems can be stated in the form of a general root finding problem. In
     this lecture the general root finding problem will be stated. Algorithms
     for the root finding problem will be presented in the next few lectures.
       [> > go there](https://jvkoebbe.github.io/math4610/lecture_02/html/finite_precision)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_02/pdf/git_primer.pdf)

---

[prev](https://jvkoebbe.github.io/math4610/lectures/lecture_02/md/lecture_02) |
[toc](https://jvkoebbe.github.io/math4610/lectures/toc_lectures) |
[next](https://jvkoebbe.github.io/math4610/lectures/lecture_04/md/lecture_04)

---
