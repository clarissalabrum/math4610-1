      program main
c
c variables for the test
c ----------------------
c
      real*8 c(1000), pi, tol
      real*8 x0, x1, x2
      real*8 ek(1000)
      real*8 a11, a12, a22, b1, b2
      real*8 aval, rval
      real*8 detval
      real*8 error
      real*8 f, df
      real*8 f0, f1
      integer maxiter, n
      integer iter
c
c initialize the interval and tolerance desired
c ---------------------------------------------
c
      maxiter = 25
      x0 = 0.0
      x1 = 1.0
      c(1) = x0
      c(2) = x1
      tol = 0.000000000001
      error = 10.0 * tol
      f0 = f(x0)
      f1 = f(x1)
c
c do the bisection iterations needed
c ----------------------------------
c
      iter = 2
      dowhile((error > tol) .and. (iter .lt. maxiter))
         x2 = x1 - f1 * ( x1 - x0 ) / ( f1 - f0 )
         c(iter+1) = x2
         error = dabs( x2 - x1 )
         x0 = x1
         x1 = x2
         f0 = f1
         f1 = f(x2)
         iter = iter + 1
      enddo
      print *,"no. of iters = ", iter
c
c print out a header for the output
c ---------------------------------
c
      print *," Iter:     ek    ekp1    log(ek)     log(ekp1)"
      print *," ---------------------------------------------"
c
c initialize storage for the linear regression to determine the computational
c rate of convergence - note that the normal equations matrix is symmetric.
c -------------------------------------------------------------------------
c
      a11 = dble(n-1)
      a12 = 0.0
      a22 = 0.0
      b1 = 0.0
      b2 = 0.0
c
c loop over the approximations computed computing the approximate errors
c ----------------------------------------------------------------------
c
      n = iter
      do 2 i=1,n-1
         ek(i) = abs( c(n) - c(i) )
    2 continue
      do 3 i=1,n-2
c
c print out the next line in the table of errors
c ----------------------------------------------
c
         print *, i, c(i), ek(i)
c
c update the error variables in the normal equations
c --------------------------------------------------
c
         a12 = a12 + dlog10(ek(i))
         a22 = a22 + dlog10(ek(i)) * dlog10(ek(i))
         b1 = b1 + dlog10(ek(i+1))
         b2 = b2 + dlog10(ek(i)) * dlog10(ek(i+1))
c
    3 continue
c
c compute the solution using the inverse of the 2x2 matrix for the linear
c reduction of the matrix
c -----------------------
c
      detval = a11 * a22 - a12 * a12
      aval = ( a22 * b1 - a12 * b2 ) / detval
      rval = ( a11 * b2 - a12 * b1 ) / detval
c
c output the results - note that the constant needs to be exponentiated
c ---------------------------------------------------------------------
c
      print *, "shift constant:   ", exp(aval)
      print *, "rate of convergence:   ", rval
c
c this code will be used to test convergence rates for the bisection method
c -------------------------------------------------------------------------
c
      stop
      end
c
c a simple function used to test the bisection method
c ---------------------------------------------------
c
      real*8 function f(x)
      real*8 x
      real*8 pi
      pi = 3.141592653589793
      f = dexp(x) - pi
      return
      end
      real*8 function df(x)
      real*8 x
      fp = dexp(x)
      return
      end
