### Examples of the Importance of Computational Mathematics and Scientific Computing

The information in this chapter details some examples of the use of methods and tools from computational mathematics and/or
scientific computing. For the examples presented, one should think of the following question.

**What does a computational mathematician do?**

The simplest of answers is that a computational mathematician translates mathematical problems into computer code. This means
that once a mathematical problem has been formulated, it is the job of a computational mathematican to write a computer code
that produces an accurate description of the mathematical problem and will produce at least an approximate solution for the
mathematical problem.

There are at least 3 or 4 types of problems that a computational mathematician addresses in the development of algorithms for 
computing approximate solutions of different problems. Some of the basic problems that need to be overcome are contained in the
following list of examples.

1. **Accuracy of an Approximation: Question from the Boss - "Does your code work?"**

Most of the algorithms that end up being translated into computer code, written and 
compiled into an executable/binary file (for example, C, C++, or Fortran), and run on various computers will produce an
approximate solution to an underlying mathematical problem. For example, using a finite difference method to discretize 
derivatives in a differential equation will, at best, result in an approximation of the solution of the original differential 
equation. If an algorithm is unable to produce an accurate approximation, the results may be of no use to colleagues that want 
to answer questions about a real problem. One question that computational scientists must be able to answer is whether or not a
computer program will produce an accurate approximate solution. A more general question is what is the largest set of problems 
for which the algorithm produces an accurate approximate solution. It should be noted that it is not good enough to get a
computer program running. If the program does not produce accurate results related to the original problem, the program really
is note worth much.

2. **Efficiency of the Computer Code: Question from the Boss - "Do you have an answer yet?"**  The implementation of any 
algorithm must necessarily be concerned with how fast results can be obtained once the algorithm has been successfully been 
encoded and all bugs (errors) in the code have been corrected. Different methods/algorithms may produce the same result, but one 
method may require more computer time than the other. As an example of this concept, there are a number of algorithms for 
computing approximate solutions of linear systems of equations. There are a variety of algorithms that can be used to compute 
solutions of linear systems of equations. If two methods for approximate solution of some problem are proposed and both produce 
an accurate approximate solution, the next question is which method completes the task in the shortest amount of time. Most 
scientists want the results as quickly as possible so that decisions may be made from the output.

Question from the Boss: "How fast can you produce an answer for me?"

3. **Robustness of the Algorithm:** Computational mathematicians try to build computer codes from algorithms with the idea of 
solving the largest possible class of mathematical problems. For example, numerical methods for approximating solutions of 
initial value problems are heavily used in real applications. If the algorithm is only capable of solving one ordinary 
differential equation, the algorithm is not likely to be very useful. The goal should be solve as many initial value problems as 
possible which results in a robust algorithm. This means that a user will be able to solve many different initial value problems 
with the same code.

Question from the Boss: "Hey I have this problem that is almost the same. Can you produce the same result for this other deal?

4. **Stability of Algorithms Developed:** An important problem in scientific computing is the stability of the implementations
of the algorithms one needs in the approximate solution of mathematical problems. There are many uses of the term "stability" in
mathematics. The main use of the term stability for the purposes of this text is related to small changes in the inputs to the
computer code used. If small changes in the input to an implementation of an algorithm (e.g, Newton's Method), the algorithm
is stable - at least heuristically. Small perturbations to the input to a computer code come from a variety of things from
measurement error to finite representation of numbers on computers to truncation errors. If an implementation is unstable, any
of these sources of initial error may lead to erroneous results when the code is applied to some problems.

Question from the Boss: Is there any way we can get results faster?

5. **Implementation of Computer Code in High Performance Computing:** In recent years, the evolution of faster CPU technology 
has been stunted by limitations in the physics of semiconductors. The days of doubling the performance of process (Moore's law) 
have, infortunately faded to black due to the physical limits on the materials used to create CPUs for computers. However, there 
is more than one way to skin a cat. Innovations in Graphics Processing Units (GPUs) and multiple core computers have allowed 
developers to implement parallel versions of algorithms if the algorithm lends itself to parallelism. Over the past couple of 
decades, multicore computers have been made available and the GPU technology for fast refresh rates on computer screens has 
spawned many efforts to use the extra resources.....

Question from the Boss: Is there any way we can get results faster?

6. **Computer Graphics:** Another important skill set involves visualization of the results of running a program. What is the
best way to display results of a simulation.

Question from the Boss: I don't get what this means? Can you show me a picture of what the numbers mean?

[Back to Main Page](https://jvkoebbe.github.io/math4610/main) | 
[Back to Table of Contents](https://jvkoebbe.github.io/math4610/frontMatter/tableOfContents)
