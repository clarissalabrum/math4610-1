### Examples in Computational Mathematics and Scientific Computing

The information on this page details some examples of the use of methods from computational mathematics and/or scientific
computing. There are at least 3 or 4 types of problems that a computational mathematician addresses in the development of
algorithms for computing approximate solutions of different problems. Some of the basic problems that need to be overcome
are contained in the following list.

1. **Accuracy of an Approximation:**  Most of the algorithms that end up being translated into computer code, compiled in some 
language (for example, C or C++), and run on various computers will produce an approximate solution to a mathematical problem. For 
example, using a finite difference method to discretize derivatives in a differential equation will, at best, result in an 
approximation of the solution of the original differntial equation. If an algorithm is unable to produce an accurate approximation, 
the results may be of no use to colleagues that want to answer questions about a real problem.

2. **Efficiency of the Computer Code:**  The implementation of any algorithm must necessarily be concerned with how fast results 
can be obtained once the algorithm has been successfully been coded and all bugs (errors) in the code have been corrected. 
Different methods/algorithms may produce the same result, but one method may require more computer time than the other. Most 
scientists want the results as quickly as possible so that decisions may be made from the output.

3. **Robustness of the Algorithm:** Computational mathematicians try to build computer codes from algorithms with the idea of 
solving the largest possible class of mathematical problems. For example, numerical methods for approximating solutions of initial 
value problems are heavily used in real applications. If the algorithm is only capable of solving one ordinary differential 
equation, the algorithm is not likely to be very useful. The goal should be solve as many initial value problems as possible which 
results in a robust algorithm. This means that a user will be able to solve many different initial value problems with the same 
code.

4. **Stability of Algorithms Developed:** An important problem in scientific computing is the stability of the implementations
of the algorithms one needs in the approximate solution of mathematical problems. There are many uses of the term "stability" in
mathematics. The main use of the term stability for the purposes of this text is related to small changes in the inputs to the
computer code used. If small changes in the input to an implementation of an algorithm (e.g, Newton's Method), the algorithm
is stable - at least heuristically. Small perturbations to the input to a computer code come from a variety of things from
measurement error to finite representation of numbers on computers to truncation errors. If an implementation is unstable, any
of these sources of initial error may lead to erroneous results when the code is applied to some problems.

5. **Implementation of Computer Code in High Performance Computing:** In recent years, the evolution of faster CPU technology has 
been stunted by limitations in the physics of semiconductors. The days of doubling the performance of process (Moore's law) have, 
infortunately faded to black due to the physical limits on the materials used to create CPUs for computers. However, there is more 
than one way to skin a cat. Innovations in Graphics Processing Units (GPUs) and multiple core computers have allowed developers to 
implement parallel versions of algorithms if the algorithm lends itself to parallelism. Over the past couple of decades, multicore 
computers have been made available and the GPU technology for fast refresh rates on computer screens has spawned many efforts to 
use the extra resources.....

[Back to Main Page](https://jvkoebbe.github.io/math4610/Readme) | 
  [Back to Table of Contents](https://jvkoebbe.github.io/math4610/frontMatter/tableOfContents)
