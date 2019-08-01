      subroutine smaceps(seps, ipow)
c
      real seps, one, appone
c
      one = 1.0
      seps = 1.0
      appone = one + seps
c
      ipow = 0
      do 1 i=1,1000
         ipow = ipow + 1
         seps = seps / 2
         appone = one + seps
         if(abs(appone-one) .eq. 0.0) return
    1 continue
c
      print *,"The loop limit has been exceeded"
c
      return
      end
