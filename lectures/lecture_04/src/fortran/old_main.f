c
c ------------------------------------------------------------------------------
c
c Author: Joe Koebbe
c         Department of Mathematics and Statistics
c         Utah State University
c 
c Subroutine Name:  abserr
c
c Description: This code returns the distance or absolute error between
c              an exact value and an approximate value
c
c Input:
c
c       x - the approximate value
c       xe - the exact value
c
c Output:
c
c       eabs - the return value containing the absolute error of the two
c              input values
c
c ------------------------------------------------------------------------------
c
      program old_main
c
c set up the problem
c ------------------
c
      real seps = 1.0
      integer ipow = 0
      call smaceps(seps, ipow)
      tval = 1.0 / 2.0**(ipow+1)
      print *, "Output from smaceps:"
      print *, ""
      print *, tval, ipow
c
c stop
c ----
c
      stop
      end
c
c ------------------------------------------------------------------------------
c ------------------------------------------------------------------------------
c
      subroutine smaceps(seps, ipow)
c
c intialize some variables for the iteration
c -------------------------------------------
c
      one = 1.0
      eps = 1.0
c
c ipow keeps track of the power of two that is determined by machine
c precision
c ---------
c
      ipow = -1
c
c set a loop that will kick out when precision is met
c ----------------------------------------------------
c
      do 1 i=1,1000
c
c add a perturbation to 1
c -----------------------
c
         appone = one + eps
c
c call the routine for absolute error
c -----------------------------------
c
         call abserr(diff, appone, one)
c
c check the difference to see if the two are the same to machine
c precision
c ---------
c
         if(diff .eq. 0.0) return
c
         seps = diff
c
c update the power and the value of the perturbation
c --------------------------------------------------
c
         eps = 0.5 * eps
         ipow = ipow + 1
c
    1 continue
c
c all done
c --------
c
      return
      end
c
c ------------------------------------------------------------------------------
c ------------------------------------------------------------------------------
c
      subroutine abserr(eabs, x, xe)
c
c just take the absolute value of the two numbers and set the output
c for the routine
c ---------------
c
      eabs = abs( x - xe )
c
c done
c ----
c
      return
      end
