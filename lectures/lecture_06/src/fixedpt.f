      program main
c
c store a value for pi
c --------------------
c
      real pi
      integer maxiter, iter
      pi = 3.14159265
c
c set up convergence parameters
c -----------------------------
c
      x0 = 1.0
      tol = 0.00001
      error = 10.0 * tol
      iter = 0
      maxiter = 11
c
c loop over the fixed point iteration
c -----------------------------------
c
      do while (error .gt. tol .and. iter .lt. maxiter)
         iter = iter + 1
c
c compute the next value and the error between the old and new
c ------------------------------------------------------------
c
         x1 = g(x0)
         error = abs(x1-x0)
c
c print and reset the iteration
c -----------------------------
c
         print *, x1, error
         x0 = x1
c
      end do
c
c print the value computed
c ------------------------
c
      print *, x1, error
c
      stop
      end
c
c function used to generat the function value for the iteration
c -------------------------------------------------------------
c
      real function g(x)
      real pi
      pi = 3.14159265
      g = x - ( exp(x) - pi )
      return
      end
