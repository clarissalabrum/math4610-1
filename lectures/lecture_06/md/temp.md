




There are two topics that will be covered in this lecture.  These are how to use
{\bf git} to create and work with repositories locally. The second topic
involves development of algorithms to compute the roots of a real-valued
function of a single independent variable. The most powerful property of the
{\bf git} command platform allows users to create, develop, and modify the
contents of repositories and then communicate the work with the outside world
using Github or some other hosting Version Control System (VCS). This will
allow users rapid deployment of all kinds of computational materials.
\vskip0.1in\hrule\vskip0.1in
\noindent
The part of the lecture dedicated to the solution of the root finding problem
marks the first algorithm presented in class. The root finding problem can be
stated as follows. Find a real number, $x$, such that a given function $f(x)$
is zero at that point. The reader should note that this is a very common problem
in almost every scientific discipline. In these lectures, only a small number of
all possible methods will be covered. In addtion, some example problems will be
presented from various applications in sicence and engineering.














\vskip0.1in\hrule\vskip0.1in
\noindent
{\bf Content Items:}
\begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
\topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
\itemsep=2pt}
  \item {\bf Building a Shared Library for Reusing Code:} (cont) An important
     skill that computational mathematicians should learn is to take relatively
     small codes and turn these into reusable object files. These can be
     collected into a shared library. A shared library can be linked to by other
     programs from this point on. Note that the equivalent of a shared library
     in a Windows setting is called a DLL.

       [> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_04/md/shared_library_example)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_04/pdf/shared_library_example.pdf)

  \item {\bf Documentation of Reusable Code:}  Each student will need to write a
     software manual for the algorithms implemented in class. A template for the
     software manual has been created by your instructor using Jekyll on Github.
     Students are required to use the template and can look at the template and
     download a copy of the template for their own use.

       [> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_04/md/softwaremanual_example)
       | [(md)](https://jvkoebbe.github.io/math4610/lectures/lecture_02/md/softwaremanual_example.md)

  \item {\bf Link to the Software Manual Template:} The link for the software
     maual is:

     [link](https://jvkoebbe.github.io/math4610/softwareManual/softwareManualTemplate.md)

  \item {\bf Wrap up and Questions:}  If there is time and anyone has questions
     about the lecture, these will be addressed.

\end{list}

---

[prev](https://jvkoebbe.github.io/math4610/lectures/lecture_03/md/lecture_03) |
[toc](https://jvkoebbe.github.io/math4610/lectures/toc_lectures) |
[next](https://jvkoebbe.github.io/math4610/lectures/lecture_05/md/lecture_05)

---

\end{document}



\begin{verbatim}

  1. Explicit Euler method and error

\end{verbatim}



Representation of round off error and the analysis of how errors accumulate in
complex computations. One way to proceed is through interval analysis applied to
numbers that are approximated in machine arithmetic. A simple 
example of how to build a shared library will also be discussed. This is an
important skill to have in computational mathematics.
     homework repository that each student must have to complete homework. The
     homework repository should be a private repository with you instructor as
     the only collaborator. Homework will be graded by first cloning the
     repository and then your constructor can create a branch for grading. This
     can be repeated by creating a pull request on the repository.
     [> > go there](https://www.github.io/jvkoebbe/math4610/lectures/lecture_02/homework_structure)
     | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_02/pdf/homework.pdf)

        \href{https://jvkoebbe.github.io/math4610/syllabus/md/syllabus}

  \item
        \href{https://jvkoebbe.github.io/math4610/lectures/lecture_01/pdf/cygwin_primer.pdf}

  \item {\bf Using Version Control Systems (VCS) - git:} A brief discussion of
     \lq\lq git\rq\rq\ will be taken up in class to show how to work and
     collaborate with other students and your instructor. The \lq\lq git\rq\rq\ 
     platform allows you to work on a laptop at home and then \lq\lq push\rq\rq\ 
     your work and any modifications to Github where the instructor can get to
     the work.
       [> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_02/md/git_primer)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_02/pdf/git_primer.pdf)
  \item {\bf Code for Determining Machine Precision:} A simple algorithm for
     determining the precision for number representation will be covered. Two
     different versions of the code will be presented that determine single and
     double precision for your computer. Note that these two codes will be used
     to show students how to build a shared library.
       [> > go there](https://jvkoebbe.github.io/math4610/lecture_02/html/finite_precision)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_02/pdf/git_primer.pdf)

  \item {\bf Building a Shared Library for Reusing Code:} In important skill
     that computational mathematicians should learn is the ability to take
     relatively small codes and turning these into reusable object files and
     then collecting the object files into a shared library. 
       [> > go there](https://jvkoebbe.github.io/math4610/lecture_02/html/finite_precision)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_02/pdf/git_primer.pdf)
        \href{https://jvkoebbe.github.io/math4610/lectures/lecture_01/pdf/github_primer.pdf}

  \item {\bf Testing the Codes in a Shared Library:} We will go over how to
     write a code that uses the object routines in a shared library. Linking a
     main code to a library will be covered.
       [> > go there](https://jvkoebbe.github.io/math4610/lecture_02/html/finite_precision)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_02/pdf/git_primer.pdf)

  \item {\bf Floating Point Representation of Numbers on Computers:} The IEEE
     standard for number representation will be covered. Number precision for
     32-bit and 64-bit systems will be covered. 

  \item {\bf Wrap up and Questions:} If there is time and anyone has questions
        about the lecture, these will be addressed.

\end{list}
\vskip0.1in\hrule\vskip0.1in
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\end{document}
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

  1. **Building a Shared Library for Reusing Code:** An important skill that
     computational mathematicians should learn is to take relatively small codes
     and turn these into reusable object files. These can be collected into a
     shared library. A shared library can be linked to by other programs from
     this point on. Note that the equivalent of a shared library in a Windows
     setting is called a DLL.
       [> > go there](https://jvkoebbe.github.io/math4610/lecture_03/md/shared_library_example)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_03/pdf/git_primer.pdf)

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

  6. **Wrap up and Questions:**  If there is time and anyone has questions about
     the lecture, these will be addressed.

---

[prev](https://jvkoebbe.github.io/math4610/lectures/lecture_02/md/lecture_02) |
[toc](https://jvkoebbe.github.io/math4610/lectures/toc_lectures) |
[next](https://jvkoebbe.github.io/math4610/lectures/lecture_04/md/lecture_04)

---





























# Math 4610 Fundamentals of Computational Mathematics  - Lecture 5

In this lecture we will take up one topic in how to work within the "git"
framework and more on roundoff error, problems that arise in using arithmetic
operations on machine numbers, and methods that can be used to modify algorithms
and code to mitigate some of these problems. That is, we will talk about how to
control the accumulation of roundoff errors for those sources of error that can
be addressed by computational scientists.

<hr>

## Content Items:

  1. **Using Version Control Systems (VCS) - git:** A brief discussion of "git"
       will be taken up in class to show how to work and collaborate with other
       students and your instructor. The "git" platform allows you to work on a
       laptop at home and then "push" your work and any modifications to Github
       where the instructor can get to the work.
       [> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_05/md/git_primer)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_05/pdf/git_primer.pdf)

  2. **Statement of the Root Finding Problem:**  Many applied mathematics
     problems can be stated in the form of a general root finding problem. In
     this lecture the general root finding problem will be stated. Algorithms
     for the root finding problem will be presented in the next few lectures.
       [> > go there](https://jvkoebbe.github.io/math4610/lecture_05/html/finite_precision)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_05/pdf/git_primer.pdf)

  3. **Wrap up and Questions:**  If there is time and anyone has questions about
     the lecture, these will be addressed.

---

[prev](https://jvkoebbe.github.io/math4610/lectures/lecture_03/md/lecture_03) |
[toc](https://jvkoebbe.github.io/math4610/lectures/toc_lectures) |
[next](https://jvkoebbe.github.io/math4610/lectures/lecture_05/md/lecture_05)

---

  1. **Roundoff Errors and Arithmetic Operations:** - Every computation done
     combines two numbers that in general are only approximations of the exact
     values. The errors in some cases result in catastrophic cancellation that
     result in output that is garbage. We will look at the sum, difference, 
     product, and ratio of numbers. Note that all operations involve some
     combination of these four operations.
     [> > go there](https://www.github.com/jvkoebbe/math4610/lectures/lecture_05/homework)
     | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_05/pdf/homework.pdf)

  2. **Analytic Fixes for Cancellation Errors:** In some cases, the arithmetic
     operations needed in an algorithm can be rearranged through the use of
     some mathematical manipulation to obtain an equivalent algorithm that is
     more stable. A couple of examples will be treated.
       [> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_05/md/git_primer)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_05/pdf/git_primer.pdf)

  3. **An Introduction to Interval Analysis:** Interval analysis involves doing
     arithmetic on intervals instead of numbers. This will be made a bit more
     clear in the lecture. Sums, differences, products, and quotients are all
     treated within the structre of intervals. 
       [> > go there](https://jvkoebbe.github.io/math4610/lecture_05/html/finite_precision)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_05/pdf/git_primer.pdf)

  4. **Documentation of Reusable Code:**  Each student will need to write a
     software manual for the algorithms implemented in class. A template for the
     software manual has been created by your instructor using Jekyll on Github.
     Students are required to use the template and can look at the template and
     download a copy of the template for their own use.
       [> > go there](https://jvkoebbe.github.io/math4610/lecture_05/html/finite_precision)
       | [(pdf)](https://jvkoebbe.github.io/math4610/lecture_05/pdf/git_primer.pdf)
