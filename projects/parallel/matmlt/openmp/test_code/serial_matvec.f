      program serial
c
c ------------------------------------------------------------------------------
c
c Author:        Joe Koebbe
c Language:      Fortran
c Last Modified: Summer 2019
c
c Purpose: The purpose of this code is to implement an algorithm for computing
c          a matrix-vector product. The code is a serial version of the
c          algorithm using the dot product of rows by columns.
c
c ------------------------------------------------------------------------------
c
      parameter(m=12500, n=12500)
      integer iseed
      real*8 a(m,n), x(n), y(m)
c
c initialize the input matrix and vector
c --------------------------------------
c
      dsgn = 1.0
      do 1 i=1,n
         x(i) = dsgn
         dsgn = -1.0
    1 continue
c
c set up a random number generator
c --------------------------------
c
      iseed = 86456
      call srand(iseed)
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
c
c print out a statement to get started
c ------------------------------------
c
      print *,'call the serial matrix multiplication routine'
c
c call the routine
c ----------------
c
      call cpu_time(t1)
      call matmlt(m, n, a, x, y)
      call cpu_time(t2)
      dt = t2 - t1
c
c print a statement to indicate the code is done
c ----------------------------------------------
c
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
c start the loop for the product
c ------------------------------
c
      do 1 i=1,m
         y(i) = 0.0
      do 1 j=1,n
         y(i) = y(i) + a(i,j) * x(j)
    1 continue
c
      return
      end
