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
