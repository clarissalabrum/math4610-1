
# Math 4610 Table of Contents for Lectures:

The following list includes links to the lectures in Math 4610.

  * **Lecture 1.** 
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_01/md/lecture_01)

     - The syllabus,
     - command windows/terminals, Cygwin,
     - coding and compiling in an example: (hello world!), and 
     - Github and homework. 


  * **Lecture 2.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_02/md/lecture_02)

     - homework repositories,
     - using **git** to work locally
     - a coding example for determining machine precision,
     - sharing libraries of objects, and
     - testing codes 

  * **Lecture 3.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_03/md/lecture_03)

     - number representation and machine precision,
     - definition of absolute and relative errors
     - arithmetic operations and accumulation of error
     - an example using derivative approximations

  * **Lecture 4.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_04/md/lecture_04)

     - Some information on html, xhtml, and markdown,
     - definition of truncation error
     - an example using derivative approximations, and 

  * **Lecture 5.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_05/md/lecture_05)

     - The software manual format/template and Jekyll,
     - a calculus level review of Taylor series expansions,
     - analyzing truncation errors, and
     - applying Taylor series expansions to derivative approximations

  * **Lecture 6.**
[> > go there](https://jvkoebbe.github.io/math4610/lectures/lecture_06/md/lecture_06)

     - Task Sheet 1



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: Accuracy Using the Difference Quotient for the Derivative}
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item A mathematical example of errors in the determination of an
            approximate formula for the derivative of a function in one
            independent variable.
      \item Definition of truncation error when using approximations of analytic
            formulas. The definition of the derivative will be reviewed and used
            as a means to obtain an approximation of the derivative.
      \item Analysis of the difference quotient as an approximation of the
            first derivative using Taylor series expansions. We will briefly
            review Taylor series normally presented in the second semester of an
            engineering calculus sequence. At USU, the prerequisite course is
            Math 1220 Calculus II.
      \item Coding up the approximation of the finite difference approximation
            and testing the code. Note that the code will produce a numerical
            value and the results will be \lq\lq verified\rq\rq\ using a known
            derivative. A general discussion of the computation of the error
            will start with this example.
      \item The end of class will be used to go over any details from previous
            classes.
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: The Bisection Method:}
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item Definition of the root finding problem for one variable will be
            stated mathematically.
      \item A brief version of the Intermediate Value Theorem for continuous
            functions of a single real variable will be given.
      \item The next step will be to develop and code the Bisection method based
            on what the Intermediate Value Theorem states. 
      \item Using recursion to define an implementation of the Bisection Method.
      \item An alternate way to write the Bisection method using a specified
            number of iterations based on interval size reduction.
    \end{list}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \item {\bf Lecture: Truncation Error versus Roundoff Error} 
    \begin{list}{$\bullet$}{\usecounter{beans} \parsep=0pt \listparindent=0pt
    \topsep=0pt \rightmargin=.35in \leftmargin=.35in \labelsep=5 pt
    \itemsep=2pt}
      \item Questions from the previous lecture.
      \item Formally define truncation error and roundoff error related to
            machine precision.
      \item Define the terms absolute error and relative (or percent) error.
            This part of the lecture will include examples involving
            sensitivity of errors to small changes or perturbations in the
            numerical computations.
      \item How roundoff errors can be accumulate through computationally
            intensive algorithms. One example involves the approximate solution
            of linear systems of equations or systems of differential equations.
      \item Discussion of the two sources of error in the context of a finite
            difference approximation from the previous lecture. Students will
            see how to compute both absolute error and relative error for this
            example.
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
