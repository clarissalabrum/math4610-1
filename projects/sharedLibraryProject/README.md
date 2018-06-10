## Project: How To Build A Shared Library

The code you write as you work through the homework for approximately solving mathematical problems should be reusable. At
least you should make a strong effort to make your code reusable. Once the code you write is debugged and can be used in
other applications, it makes sense that the code be put into a repository or some other form that allows repeated access to
the codes and in particular an executable file - like an android app or as a contribution to open source simulation packages 
like OpenFOAM. In testing your reusable code, it is a good idea to put the compiled versions of your functions or methods into
a shared library or Dynamic Linked Library (DLL). This project will allow you to work through both of these options.

This project is used in Math 4610 Fundamentals of Computational Mathematics as a means of increasing the breadth and depth of
students computational skills. So, the project requires students exercises for building both shared libraries in both a Windows
environment and a Linux/Unix environment. Note that this project uses cygwin to emulate a UNIX working environment.

Note that a generic command prompt is given as a part of each of the commands given. So, in a UNIX application, the prompt is
the "%" character. You will not need to type this character to execute the command. To build a DLL the prompt would be something
like ">".

### Building a Shared Library for Unix/Linux Environments

In this section students will put together a shared library using the Linux/UNIX archive utility to create a shared library.
The command that we will use in a bash/csh shell or terminal is:

    ar()

with appropriate flags specified for various coding languages and options. To find out more about the ar() command in a shell
you can type the following:

    % man ar

Most of the material used to create this part of the project can be found at the site:

http://cygwin.org

As an example of how one can create a script that automatically creates a shared library, the author implemented the ar command
in the a script for creating a general shared libraries, including the name of the library, location of the library, and other
parameters for the library. The following provides a link to the script. Note that the script is a bit long, but that is what
happens in the development of code:

[jvklib](https://jvkoebbe.github.io/math4610/projects/jvklib) link
    
The script given above is rather complicated looking. However, the script can be broken down into chunks of shell (in fact,
tcsh) script. The part that we are interested in is the the part where the shared library is created. That is the line:

    % ar rcv $APPLIBFILENAME *.o >> $APPLOGFILENAME

The variables APPLIBFILENAME and APPLOGFILENAME contain the actual name of the library being create and the log file where any
errors messages are copied to. The main thing we need is the following:

    % ar rcv libname *.o
    
The command creates an archive with options "r", "c", and "v" specified. The argument:

    *.o

means put all files in that have the "o" extension.

In addition to creating a shared library, it is important to be able to maintain the library. The maintenance of the library
will involve the following operations:

1. You will need to be able to add routines and object files to an existing library.
2. You will need to be able to remove routines from the library that are no longer needed.
3. You will need to be able to swap out objects when modifications have been made to any routine that is included in the
   library.
4. Finally, you will need to be able to load and link the libraries to code that you write.

Each of the following links will allow you to see an example of how to achieve the operations mentioned above.

1. 

### Dynamic Linked Library (DLL) Instructions

The information in this part of the project involves the creation of a Dynamic Linked Library (DLL) for use with codes written
on Microsoft Windows computers. You should use this to create your own DLLs for this course with the code written throughout
the semester. Most of the material for this project can be accessed by clicking on the following link.

https://cygwin.com/cygwin-ug-net/dll.html

So, let's start the process of building a DLL.

### Project Exercises

**Question 1: Creating a Shared Library:** Download the following codes for creation of a shared library.

1. [helloworld.c](https://jvkoebbe/math4610/projects/sharedLibraryProbject/helloWorld.c)
2. [annoyingHelloWorld.c](https://jvkoebbe/math4610/projects/sharedLibraryProject/annoyingHelloWorld.c)

Next, compile the routines that you have downloaded into object modules using the following:

    gcc -c *.c

This will produce two files with a .o extension. The last step in the process is to create a library using the following
command:

    ar cvf mylib.a

The result is an archive file that programs can link to and use the modules within.

**Question 2: Link/Run a Program to a Shared Library**

**Question 3: Add a New Module to a Shared Library**

**Question 4: Delete a Module**

**Question 5: Using Freely Available Libraries**

Using programming languages like Python, programmers bump into toolboxes, packages, libraries, and so on. In this part of the
project, the numpy package associated with Python will be used to see how to load freely available packages programmers use
to reuse well tested codes.
