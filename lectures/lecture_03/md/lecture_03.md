# Math 4610 Fundamentals of Computational Mathematics  - Lecture 3

The accumulation of round off error can be a serious problem in computational
mathematics. The idea in this lecture is to focus on errors that occur ain every
arithmetic operation performed by a computer in any attempt to solve a
mathematical problem. Some simple examples of how to use interval analysis will
be covered. Documentation of algorithms and computer codes is essential to any
successful attempt to write reusable code. Finally, we will introduce the
general mathematical problem of finding the roots of a nonlinear function of a
single variable.

<hr>

## Content Items:

  1. **Roundoff Errors and Arithmetic Operations:** - Every computation done
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

  2. **Building a Shared Library for Reusing Code:** In important skill that
     computational mathematicians should learn is the ability to take relatively
     small codes and turning these into reusable object files and then
     collecting the object files into a shared library.
       [> > go there](https://jvkoebbe.github.io/math4610/lecture_03/html/finite_precision)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_03/pdf/git_primer.pdf)

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

  6. **Wrap up and Questions:**  If there is time and anyone has questions about
     the lecture, these will be addressed.

---

[prev](https://jvkoebbe.github.io/math4610/lectures/lecture_02/md/lecture_02) |
[toc](https://jvkoebbe.github.io/math4610/lectures/toc_lectures) |
[next](https://jvkoebbe.github.io/math4610/lectures/lecture_04/md/lecture_04)

---
