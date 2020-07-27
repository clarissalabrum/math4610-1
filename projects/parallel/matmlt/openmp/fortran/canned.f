c******************************************************************************
c file: omp_mm.f
c description:  
c   openmp example - matrix multiply - fortran version 
c   demonstrates a matrix multiply using openmp. threads share row iterations
c   according to a predefined chunk size.
c author: blaise barney
c last revised: 1/5/04 blaise barney
c******************************************************************************

      program matmult

      integer  nra, nca, ncb, tid, nthreads, i, j, k, chunk,
     +         omp_get_num_threads, omp_get_thread_num
c     number of rows in matrix a 
      parameter (nra=62)
c     number of columns in matrix a
      parameter (nca=15)
c     number of columns in matrix b
      parameter (ncb=7)

      real*8 a(nra,nca), b(nca,ncb), c(nra,ncb)

c     set loop iteration chunk size 
      chunk = 10

c     spawn a parallel region explicitly scoping all variables
!$omp parallel shared(a,b,c,nthreads,chunk) private(tid,i,j,k)
      tid = omp_get_thread_num()
      if (tid .eq. 0) then
        nthreads = omp_get_num_threads()
        print *, 'starting matrix multiple example with', nthreads,
     +           'threads'
        print *, 'initializing matrices'
      end if

c     initialize matrices
!$omp do schedule(static, chunk)
      do 30 i=1, nra
        do 30 j=1, nca
          a(i,j) = (i-1)+(j-1)
  30  continue
!$omp do schedule(static, chunk)
      do 40 i=1, nca
        do 40 j=1, ncb
          b(i,j) = (i-1)*(j-1)
  40  continue
!$omp do schedule(static, chunk)
      do 50 i=1, nra
        do 50 j=1, ncb
          c(i,j) = 0
  50  continue

c     do matrix multiply sharing iterations on outer loop
c     display who does which iterations for demonstration purposes
      print *, 'thread', tid, 'starting matrix multiply...'
!$omp do schedule(static, chunk)
      do 60 i=1, nra
      print *, 'thread', tid, 'did row', i
        do 60 j=1, ncb
          do 60 k=1, nca
            c(i,j) = c(i,j) + a(i,k) * b(k,j)
  60  continue

c     end of parallel region 
!$omp end parallel

c     print results
      print *, '******************************************************'
      print *, 'result matrix:'
      do 90 i=1, nra
        do 80 j=1, ncb
          write(*,70) c(i,j)
  70      format(2x,f8.2,$)
  80      continue
          print *, ' '
  90      continue
      print *, '******************************************************'
      print *, 'done.'

      end
