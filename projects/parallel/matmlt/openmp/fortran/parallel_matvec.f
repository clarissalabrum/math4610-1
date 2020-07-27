      program parallel
c
c ------------------------------------------------------------------------------
c
c Author:        Joe Koebbe
c Language:      Fortran
c Last Modified: Summer 2019
c
c Purpose: The purpose of this code is to implement an algorithm for computing
c          a matrix-vector product. The code is a parallel version of the
c          algorithm using dot products of rows by columns in parallel. Each 
c          dot product can be done independently.
c
c ------------------------------------------------------------------------------
c
c the following comment is absorbed as a comment if the openmp library is not
c added to the compile command. if the openmp flag is used the line tells the
c code to use the omp intristic library. This allows a serial version of the
c code can be accessed by a simple recompile
c ------------------------------------------
c
c$    use omp_lib
c
c the following parameter and storage allocation statements are standard
c ----------------------------------------------------------------------
c
      parameter(m=100, n=100)
      real*8 a(m,n), x(n), y(m)
c
c set up a random number generator
c --------------------------------
c
      call cpu_time(t1)
      iseed = 86456
      call srand(iseed)
c
c initialize the input matrix and vector
c --------------------------------------
c
      dsgn = 1.0
      do 1 i=1,n
         x(i) = dsgn * rand()
         dsgn = -1.0
    1 continue
c
c initial the matrix for the multiplication test
c ----------------------------------------------
c
      do 2 i=1,m
      do 2 j=1,n
         a(i,j) = rand()
    2 continue
c
c put in a diagonal entry that will keep the matrix diagonally dominant
c ---------------------------------------------------------------------
c
      do 3 i=1,m
         a(i,i) = dble(m) + a(i,i)
    3 continue
      call cpu_time(t2)
      dt = t2 - t1
      print *,'all done    cpu_time = ', dt
c
c print out a statement to get started
c ------------------------------------
c
      print *,'call the matrix multiplication routine'
c
c call the routine
c ----------------
c
      call cpu_time(t1)
      call matmlt(m, n, a, x, y)
      call cpu_time(t2)
c
c print a statement to indicate the code is done
c ----------------------------------------------
c
      dt = t2 - t1
      print *,'all done    cpu_time = ', dt
c
      stop
      end
c
c subroutine for computing the matrix-vector product
c --------------------------------------------------
c
      subroutine matmlt(m, n, a, x, y)
      real*8 a(m,n), x(n), y(m)
c
c do the loop thing
c -----------------
c
c$omp parallel private(i, j, sum, y) shared(a, x)
      do 2 i=1,m
         sum = 0.0
      do 1 j=1,n
         sum = sum + a(i,j) * x(j)
    1 continue
      y(i) = sum
    2 continue
c$omp end parallel
c
      return
      end
