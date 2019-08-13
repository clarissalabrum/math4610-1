      subroutine dmaceps(deps, ipow)
c
      real*8 deps, one, appone
c
      one = 1.d0
      deps = 1.d0
      appone = one + deps
c
      ipow = 0
      do 1 i=1,1000
         ipow = ipow + 1
         deps = deps / 2
         appone = one + deps
         if(abs(appone-one) .eq. 0.d0) return
c
    1 continue
c
      return
      end
