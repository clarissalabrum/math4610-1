
# Math 4610 Table of Contents for Lectures:

The following list includes links to the lectures in Math 4610.

  * **Lecture 1.** 
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_01/md/lecture_01)
[(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_01/pdf/lecture_01.pdf)

     - The syllabus,
     - command windows/terminals, Cygwin,
     - coding and compiling in an example: (hello world!),
     - Github and homework, and 
     - homework tasksheets (where to start). 


  * **Lecture 2.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_02/md/lecture_02)
[(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_02/pdf/lecture_02.pdf)

     - General repositories creation,
     - homework repositories,
     - some intuition about finite precision in number representation,
     - a coding example for determining machine precision, and
     - an introduction to roundoff error. 

  * **Lecture 3.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_03/md/lecture_03)
[(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_03/pdf/lecture_03.pdf)

     - Measureing errors using absolute and relative errors,
     - types of errors the arise for computational scientists must deal with,
       and
     - shared libraries an introduction

  * **Lecture 4.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_04/md/lecture_04)
[(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_04/pdf/lecture_04.pdf)

     - More on shared libraries, and
     - writing a software manual for the codes you create.

  * **Lecture 5.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_05/md/lecture_05)
[(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_05/pdf/lecture_05.pdf)

     - Coding the derivative example,
     - definition of truncation error,
     - comparing roundoff error and truncation error,
     - a brief review of Taylor series expansion,
     - alternative approximations of the derivative, and
     - building a software manual.
     - Some information on formatting results and output,
     - basics for html, xhtml, and markdown, LaTeX,
     - the software manual format/template and Jekyll, and
     - using "git push" to make changes on Github.

  * **Lecture 6.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_06/md/lecture_06)
[(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_06/pdf/lecture_06.pdf)

     - The general root finding problem for functions of one variable,
     - transformation of the root finding problem to a fixed point problem,
     - lack of uniqueness of the fixed point equation, and
     - convergence of fixed point iteration.

  * **Lecture 7.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_07/md/lecture_07)
[(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_07/pdf/lecture_07.pdf)

     - Coding up a fixed point iteration for the root finding problem,
     - classes of functions in the general root finding problem, and
     - continuity, the Intermediate Value Theorem and the Bisection method.

  * **Lecture 8.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_08/md/lecture_08)
[(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_08/pdf/lecture_06.pdf)

     - Coding up a the Bisection Method for finding roots,
     - a basic routine/method for bisection,
     - stopping criteria for the Bisection, and
     - a relationship between the number of iterations and error in the
       approximation.

  * **Lecture 9.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_09/md/lecture_09)
[(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_09/pdf/lecture_09.pdf)

     - Differentiable functions in the root finding problem,
     - more terms and Newton's Method for root finding,
     - Newton's method and second order accuracy, and
     - proving convergence.

  * **Lecture 10.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_10/md/lecture_10)
[(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_10/pdf/lecture_10.pdf)

     - Coding Newton's method,
     - stopping criteria, and
     - second order approximation of roots.

  * **Lecture 11.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_11/md/lecture_11)
[(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_11/pdf/lecture_11.pdf)

     - Approximation of Newton's method using the Secant method,
     - coding the secant method, and
     - accuracy of the Secant method in comparison to Bisection and Newton's
       method, and
     - a summary of properties for root finding methods.

  * **Lecture 12.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_12/md/lecture_12)
[(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_12/pdf/lecture_12.pdf)

     - Finding multiple roots for functions of more than one variable,
     - divide and conquer strategies, and
     - application of multicore programming strategies.

  * **Lecture 13.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_13/md/lecture_13)
[(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_13/pdf/lecture_13.pdf)

     - Linaear systems of equations,
     - transforming a linear systems into a matrix equation,
     - solution of small linear systems using Gaussian elimination, and
     - elementary row operations.

  * **Lecture 14.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_14/md/lecture_14)
[(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_14/pdf/lecture_14.pdf)

     - Coding up Gaussian elimination for square linear systems of equations,

  * **Lecture 15.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_15/md/lecture_15)
[(pdf)](https://jvkoebbe.github.io/math4610/lectures/lecture_15/pdf/lecture_15.pdf)

     - Exam I

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: Truncation Error versus Roundoff Error} 
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Interval Analysis and the accumulation of roundoff error. Interval
            analysis allows a computational mathematicians to determine bounds
            on how errors accumulate over a large number of computations.
      \item Another related topic involves selecting \lq\lq stable\rq\rq
            algorithms for solution of real problems. Stable algorithms are less
            sensitive to accumulation of errors.
      \item Determining the efficiency of an algorithm. An effective means for
            determining efficiency is to count the number of Floating Point
            OPerations (flops) it takes to complete the algorithm.
      \item Tradeoffs between accuracy of an approximation versus efficiency of
            the algorithm used to compute the approximation will be discussed in
            terms of the examples already presented to this point.
      \item Ideas on practical methods to efficiently compute the number of
            flops needed to complete an algorithm. 
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: Solution of Linear Systems of Equations} 
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item Gaussian elimination and implementation of row reduction operations.
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: Solution of Linear Systems of Equations} 
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item Back-substitution and the solution of linear systems of equations.
      \item How to measure errors in the solution of linear equations in terms
            of norms.
      \item Standard norms in computational mathematics.
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: Solution of Linear Systems of Equations} 
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item LU factorization of square matrices.
      \item Rewrite of a linear system of equations using LU factorization.
      \item Forward substitution for intermediate solution of linear systems.
      \item LU factorization and solution of linear systems of equations.
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: Solution of Linear Systems of Equations} 
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item Comparisons for Gaussian elimination and LU factorization for
            solving linear systems of equations.
      \item Number of Floating Point Operations (flops) by introducing counters
            and the size of the linear system is increases.
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: Solution of Linear Systems of Equations} 
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item Reusable codes and putting together shared libraries from codes that
            can easily be used by others.
      \item Building examples of linear system of equations and using benchmarks
            to test codes. ORNL/nanet 
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: Matrix Operations} 
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item Computation of the sum of vectors.
      \item Computation of inner products of vectors.
      \item Computation of cross products of vectors.
      \item Computation of matrix-vector products.
      \item Computation of matrix-matrix products.
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: Stationary Iterative Method for Solving Linear Systems}
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item Functional Iteration for System Equations.
      \item Jacobi Iteration.
      \item Gauss-Seidel Iteration.
      \item Analysis of these methods.
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: Stationary Iterative Method for Solving Linear Systems}
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item Gauss-Seidel Iteration.
      \item Recursion versus explicit evaluation of iteration methods.
      \item Analysis of Gauss-Seidel
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: Parallel Algorithms for Solving Linear Systems} 
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item Compiler options for optimization of a code.
      \item Hello world using OpenMP. 
      \item Using OpenMp to parallelize Jacobi Iteration. 
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: Finding roots of nonlinear functions of one variable} 
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item The root finding problem.
      \item Functional Iteration for Root Finding.
      \item Convergence of Functional Iteration Via Fixed Point Theorems.
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: Finding roots of nonlinear functions of one variable} 
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item The Bisection Method.
      \item The Intermediate Theorem for Continuous Functions on a Closed
            Interval.
      \item Accuracy versus Number of Iterations in the Bisection Method.
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: Estimating Eigenvalues of a Square Matrix} 
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item The Rayleigh Quotient for Eigenpairs of a Square Matrix.
      \item The Power Method for estimating the largest eigenvalue of a matrix.
      \item Why the Power Method Works.
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: Inverse Iteration for the Smallest Eigenvalue} 
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item Properties of Eigenvalues of Matrices Using Shifting
      \item The Inverse Iteration Method for estimating the smallest of a
            matrix.
      \item Using Shifting, Parallel Implementation to Search for Eigenvalues
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: The QR Factorization of a Matrix} 
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item QR factorization of a matrix.
      \item Gram-Schmidt Orthogonalization of Vectors.
      \item Modified Gram-Schmift Orthogonalization for added stability of the
            computational algorithm.
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: The QR Factorization for Solving Systems of Linear
         Equations} 
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item The matrix operations needed to solve a linear system.
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: The QR Factorization for Solving Least Squares
         Problems}
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item Full Column Rank Problems and the thin QR.
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: The QR Factorization for Eigenvalue Problems}
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item The QR algorithm.
      \item Why the QR algorithm works.
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: Quantum Computing - IBMQ}
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item What is quantum computing?
      \item Accessing IBMQ.
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\end{enumerate}
\end{document}
