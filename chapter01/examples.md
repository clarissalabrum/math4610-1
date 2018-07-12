### Examples of the Importance of Computational Mathematics and Scientific Computing

If you are reading the content in this repository, you are probably interested in mathematics, computer programming, and a
number of other computer related skill set. In addition, if you are reading this you are likely interested in how to solve
real problems with a computer - not just use someone else's program to play a game or stream a video. So, it makes sense to 
understand what computational mathematics is and what computational mathematics is not. The information in this chapter details 
some examples of the use of methods and tools from computational mathematics and/or scientific computing. For the examples 
presented, one should think of the following question.

**What does a computational mathematician do?**

The simplest of answers is that a computational mathematician translates mathematical problems into computer code. This means
that once a mathematical problem has been formulated, it is the job of a computational mathematican to write a computer code
that produces an accurate description of the mathematical problem and will produce at least an approximate solution for the
mathematical problem. In addition, the computer code produced should be (1) as efficient as possible, (2) produce as accurate
a result as possible, and (3) be robust in the sense that the computer code can be used to solve the largest number of problems
possible meaning the code can be reused in other settings.

There are at least 3 or 4 types of problems that a computational mathematician addresses in the development of algorithms for 
computing approximate solutions of different problems. Some of the basic problems that need to be overcome are contained in the
following list of examples. The examples are introduced as a question that might be asked of a computational mathematician in
a job setting.

**Question from your Boss - "Can you write a code to solve this problem?"**

This question has more to do with computational skills than anything else. The question boils down to the level of competence
one has with one or more computer programming languages. Does the boss want to see code written in Python, C, C++, Java, or any
of the dozens of languages that are out there? Maybe the computational problem requires a combination of Java and Python to
make progress. Maybe the problem requires the use of data base software like MySQL or Oracle's products. Another possibility
is that your Boss wants to prototype an idea using platforms like Matlab, Maple, Mathematica, or other computational platforms
before starting a massive effort to more thoroughly answer questions about the mathematical problem in question.

Another possible area of interest might include the use of parallel algorithms using OpenMP or OpenACC using multiple cores and
GPUs, respectively. The use of parallel programming strategies in data science and high resolution simulations has become more
and more important over the past decade. There are no new advances in processor speed that will continue to double the
performance of computer hardware due limitations in getting energy to a CPU while extracting heat. Using multiple processors
is now part of the bag of tricks a computational mathematician must know.

**Question from your Boss - "Will your code produce the correct solution for the problem?"**

The first step in trying to write a code to solve a mathematical problem is to determine if this is even possible. There are a
number of issues that come up in the process of translating a mathematical problem into a computer code. The first issue 
involves the mathematical problem itself. Before any code is written, it is important that the mathematical problem have at 
least one  solution. If no solution exists for the mathematical problem, then there is really no reason to write a code to 
compute the nonexistent solution. In addition to the existence of a solution, it would be best to make sure that the 
mathematical problem has a unique solution. Once an algorithm is created for the solution of a problem with multiple solutions
the question would be which solution is being determined by the algorithm.

From a mathematical point of view, does the mathematical problem have an analytic solution. For example, suppose the
mathematical problem is a differential equation modeling fluid flow in a river system. If a theorem exists that guarantees a
unique solution exists, the goal of writing a code is to end up with results that match or approximate the exact solution to
the problem. In most cases, even when it can be guaranteed a solution exists, it may be impossible to write the solution out 
easily. One example is in the solution of the nonlinear conservation laws that are modeled by nonlinear partial differential
equations. In many cases, theorems can be provided to guarantee the existence and uniqueness of solutions, but a method for
constructing exact solutions may not be available. So, it might be necessary to settle for an approximate solution determined
by a computer code.

Another problem that a computational mathematician is faced with is the following. Suppose the mathematical problem has a
unique solution and that a computer code can be written that in the best of worlds could compute approximate solutions for
the mathematical problem. If the code is compiled and it does not fit on any known computer, then the code will not be able
to produce a solution. A problem that fits in this category is called __computationally intractable__ and alternate approaches
must be explored. In some cases, the problem can be restructured and in other cases it may mean going back to the drawing
board to find a different approach. Note that resource limitations such as memory and CPU speed are serious problems in coding
up algorithms to solve real world problems. Using parallel programming techniques and lots of hardware can be used to help
in these cases.

All digital devices have limitations in the accuracy of number representation. Every computer has a limited number of digits
that can be stored in the representation of numbers. This means that a number like __e__ the natural exponential base cannot
be represented exactly. In addition, as binary operations (addition, subtraction, multiplication, and division) cannot be done
exactly. This means that solving mathematical problems with computers starts with errors in the numbers and any calculations
done. One of the main skills a computational mathematician must be able to deal with __machine precision__ in any coding
exercise. In one of the first projects in this repository, you will be asked to determine the __machine epsilon__ for any
computer you will be using. We will leave that for later.

**Question from the Boss - "Are you sure your code works?"**

In a job setting, writing a code is not enough. You will need to be able to verify that the code you have written produces a
correct result. It is always to have a set of problems where the solution is known. These can be used as a sanity test to make
sure the code produces correct answers in known settings. A few techniques on how to generate these problems are given in this
repository. In addition, every programmer in the world knows that writing code is an endless cycle of improving and debugging
the code you have written. Once a code has been verified as working and producing results, someone in the crowd will change the
target. This might mean adding more resolution to a simulation or adding in more complicated physics in a plasma simulation.
A good computational mathematician should be able to see ways to modify code to incorporate changes needed to include the new
constraints and/or extensions to the mathematical problem.

**Question from the Boss - "When will the code produce answers to the questions I have about the problem?"**

If your boss has to wait too long for results, that may mean the end of the project and possibly your position with the
company. So, it is important to be able to estimate how long it will take to run a simulation or database inquiry and analyze
the results of your work. This may mean doing more optimization of the computer code or possibly reducing storage requirements.
This may be the most difficult part of any computational mathematician's day.

**Question from the Boss - "Can the code produce solutions for similar problems of interest to the bottom line?"**

The question in this case, implies that solving a class of problems using the computer code you have written is important. In
some codes physical parameters may be hardwired to constant values. However, the physics may call for a functional relationship
between some of these parameters. Modifiying the code to handle a more general class of problems where constituitive
relationships are defined will be a job that computational mathematicians must resolve. Writing code that is general at the
beginning of the process may be difficult. However, trying to think through possible extensions before needed can be a huge
benefit to the bottom line for any coding effort. As an example, in working for Chevron Oil Field Research Company located in
LaHabra California (at least in 1985-6) the management of the research group planned on spending $500K to rewrite a black-oil
simulator to rewrite the code in C from Fortran. At the time, this was a huge commitment for the company. In the end, the goal
was to modernize the programming language while embedding more physics and mathematics in the code.

**Question from the Boss - "Can you get the code to run faster and work on bigger problems?"**

Running a simulation on bigger problems and doing this efficiently is something that may seem easy, but it may be a tough
issue to make progress on. Bigger and more complicated problems can easily out-strip computer resources. As an example, a
graduate student who was working on simulation of fluids flowing through an aquifer (water or contaminated flow) found that
in order to compute accurate simulations in three dimensional problems, the number of mesh blocks needed was larger than
Avagadro's number which will still swamp any computer in production today. A partial solution for the problem involved coming
up with ways of averaging parameters in the problem. Another graduate student at USU was involved with a project with the
Alaska Fishery Science Center (AFSC) to produce an experimental design for determining whether or not fishing boats were
accurately measuring the catch in a cod fishery. The suggest minimal experiment was estimated to cost more than $2,000,000.
At first, both sides refused the design due to the cost. However, a couple of years later, the study was done due to the
problems within the fishery that still existed.

**Question from the Boss - "How easy is the code to use, modify and maintain?"**

Writing a code that works is one thing. However, writing a code that can be used by others to produce is also important. One
aspect of this type of work involves the reuse of code you have written. Can the code you have written be modified and 
maintained by others. There are a few issues that can help with this. The first is documentation within the code that you have
written. It is important to document the bits and pieces of the algorithm you have coded to solve any mathematical problem.
The second thing that might help others work with your code is the development of a coding style that is easy to read and is
clean. This means take out debugging commands and statements.

Writing modular code is important if you are developing libraries of basic routines. This repository has a couple of projects
based on reusable code. Students in Math 4610 complete this project which requires the development of a shared library in a
Unix/Linux environment and DLLs in a Windows OS. Students are asked to create these libraries as a basic part of being a
computational mathematician. Another project all students must complete is the development of a software manual for all of the
modular codes that are written during the course. Students are required to use a specific
[template](https://jvkoebbe.github.io/math4610/appendix02/softwareManualTemplate) for each and every entry in the software 
manual. The reasons for forcing this issue of using a preconfigured template are (1) it is much easier to grade at the end of 
the semester and (2) this is likely what will need to be done when you are working as a computational mathematician in the real
world.

Another feature that is emphasized in this repository (for obvious reasons) is the use of the social network for computational
nerds, Github, as a platform for sharing computer coding efforts. The use of Github as a computational mathematics is essential
in this day and age. To connect this idea to the question above, if your code is resuable, modular, and can easily be modified
by others, Github is a great platform to test ideas. There are other efforts being made by Stack Overflow, but for now these
materials will be developed within the Github framework.




Most of the algorithms that end up being translated into computer code, written and compiled into an executable/binary file (for 
example, C, C++, or Fortran), and run on various computers will produce an approximate solution to an underlying mathematical 
problem. For example, using a finite difference method to discretize derivatives in a differential equation will, at best, 
result in an approximation of the solution of the original differential equation. If an algorithm is unable to produce an 
accurate approximation, the results may be of no use to colleagues that want to answer questions about a real problem. One 
question that computational scientists must be able to answer is whether or not a computer program will produce an accurate 
approximate solution. A more general question is what is the largest set of problems for which the algorithm produces an 
accurate approximate solution. It should be noted that it is not good enough to get a computer program running. If the program 
does not produce accurate results related to the original problem, the program really is note worth much.

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
[Back to Table of Contents](https://jvkoebbe.github.io/math4610/frontMatter/tableOfContents) |
[Next](https://jvkoebbe.github.io/math4610/chapter02/intro)
