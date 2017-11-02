### Code to Determine Machine Precision

It is always a good idea to understand the precision with which any real number can be represented. Coming up with a way to
compute the machine precision can help with understanding how errors can accumulate as floating point operations are
performed in a computer code or simulation. To compute an estimate of the machine precision on your computer, you can write a
very little bit of computer code that will test to see how close one can get to the number 1 before precision is lost. An
example code is included in this appendix. The code is in Fortran, but can easily be translated into a C/C++, Python, or Java
code. The main reason for including the code is to make sure students get started very quickly in writing and using codes. In
addition, most computer literate students program in other languages (e.g, C, C++, Java, Python, etc.) So, providing a code in
fortran will likely cause students to take on the challenge of translating the code included below into another language. Note
that translation of code from one programming language to another is a useful skill to have.

    c
    c coding language:    Fortran 77
    c
    c ------------------------------------------------------------------------------
    c
    c written by:         Joe Koebbe
    c date written:       Sept 28, 2014
    c written for:        Problem Set 1
    c course:             Math 4610
    c
    c purpose:            Determine a machine epsilon for the computers I would like
    c                     work on computationally. The code contains 2 subroutines.
    c
    c                     smacsps - returns the single precision value for machine
    c                               precision
    c                     dmacsps - returns the double precision value for machine
    c                               precision
    c
    c ------------------------------------------------------------------------------
    c
          program main
    c
    c do the work in double precision
    c -------------------------------
    c
          real sval
          real*8 dval
    c
    c single precision test
    c ---------------------
    c
          call smaceps(sval, ipow)
          print *, ipow, sval
    c
    c done
    c ----
    c
          stop
          end
    c
    c single precision computation of machine precision
    c -------------------------------------------------
    c
          subroutine smaceps(seps, ipow)
    c
    c set up storage for the algorithm
    c --------------------------------
    c
          real seps, one, appone
    c
    c initialize variables to compute the machine value near 1.0
    c ----------------------------------------------------------
    c
          one = 1.0
          seps = 1.0
          appone = one + seps
    c
    c loop, dividing by 2 each time to determine when the difference between one and
    c the approximation is zero in single precision
    c ---------------------------------------------
    c
          ipow = 0
          do 1 i=1,1000
             ipow = ipow + 1
    c
    c update the perturbation and compute the approximation to one
    c ------------------------------------------------------------
    c
            seps = seps / 2
            appone = one + seps
    c
    c do the comparison and if small enough, break out of the loop and return
    c control to the calling code
    c ---------------------------
    c
            if(abs(appone-one) .eq. 0.0) return
    c
        1 continue
    c
    c if the code gets to this point, there is a bit of trouble
    c ---------------------------------------------------------
    c
          print *,"The loop limit has been exceeded"
    c
    c done
    c ----
    c
    return
    end

### Documentation of Software

There are no shortage of reasons for the documentation of code that you write. One of the most important reasons to document
your own code is to make sure that the code you write is reusable in your future. Writing 10's or 100's of lines with no
documentation may work in the short term. However, after a few weeks or months the documentation you write into your codes
will help remind you of what the code is doing and how the code can be used to solve problems. In some cases, it might be
difficult to understand your code after a few days. So, students in this course are encouraged to document code thoroughly.
In addition, a term project that involves documentation of code, is to write a software manual to document all the codes that
are written by the student. An example of an entry for a software manual is included in
[Appendix 1](https://jvkoebbe.github.io/math4610/appendix02/softwareManualTemplate)
