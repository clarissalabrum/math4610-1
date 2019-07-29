      function ranseq(idum,tref)
c
c * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
c
c written by: joe koebbe
c
c * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
c
      parameter (mbig=1000000000,mseed=161803398,mz=0,fac=1.e-9)
      dimension ma(55)
      data iff /0/
c
c use the index computation from above to choose values for the index based on
c the elapsed time in the code - this will give a different sequence each time
c the code is run based on the work being done by the computer
c
c get some system parameters for use in the seeding
c -------------------------------------------------
c
      if(iff .eq. 0) tref = secnds(0.0)
      ivalue = iabs( int( mseed * abs( secnds(0.0) - tref ) ) )
      index = mod(ivalue,55)
c
      if(idum.lt.0.or.iff.eq.0)then
        iff=1
        mj=mseed-iabs(idum)
        mj=mod(mj,mbig)
        ma(55)=mj
        mk=1
c
        do 11 i=1,54
          ii=mod(21*i,55)
          ma(ii)=mk
          mk=mj-mk
          if(mk.lt.mz)mk=mk+mbig
          mj=ma(ii)
11      continue
c
        do 13 k=1,4
          do 12 i=1,55
            ma(i)=ma(i)-ma(1+mod(i+30,55))
            if(ma(i).lt.mz)ma(i)=ma(i)+mbig
12        continue
13      continue
c
      inext = index
      inextp = mod(inext+31,56)
        idum=1
c
      endif
c
c set the indices in the array
c ----------------------------
c
      inext = index
      inextp = mod(inext+31,56)
c
c after the first time through
c
c update the indices
c ------------------
c
      inext = inext + 1
      if(inext .eq. 56) inext = 1
      inextp = inextp + 1
      if(inextp .eq. 56) inextp = 1
c
c compute the difference and insure that the result is in range [0,mbig]
c ----------------------------------------------------------------------
c
      mj = ma(inext) - ma(inextp)
      if(mj .lt. mz) mj = mj + mbig
c
c compute the replacement in the array
c ------------------------------------
c
      ma(inext) = mj
c
c set the value of the function
c -----------------------------
c
      ranseq = mj * fac
c
      return
      end
