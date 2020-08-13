# <center> Math 4610 Lecture Notes A Brief Coding/Compilation Example </center>


## <center> Joe Koebbe </center>

<hr>

  These notes are part of an
  [Open Educational Resource](https://www.oer.usu.edu/)
  project sponsored by Utah State University

<hr>

**Coding Example for Math 4610 at USU: Creation of a sub-directory.** 

<hr>

First start up a terminal to do the work to create a file with code in it. For
Cygwin, double click on the Cygwin Icon on your desktop or click on the the
icon in the task bar.

A terminal as shown below will appear. Type in the command shown to create a
new subfolder in the current directory. In the window, the command that does
the work is:

     mkdir src

![Screenshot taken using **Snip & Sketch. This is an app on my Windows 10 box](../images/coding_01.png)

<hr>

**Coding Example for Math 4610 at USU: Change Directory and Edit**

<hr>

To change the directory, use the command

     cd src

Once in the new directory, the next step is to edit a file to implement some
sort of action for the computer. So, type:

     vim hello.c

The editor, "vim" is a very standard editor and comes with the installation of
Cygwin.

![Screenshot taken using **Snip & Sketch. This is an app on my Windows 10 box](../images/coding_02.png)

<hr>

**Coding Example for Math 4610 at USU: Typing in a Program in C** 

<hr>

The lines in the terminal shown below define a C program for doing a very simple
task. Namely, to print the string

    hello world!

to the screen.

![Screenshot taken using **Snip & Sketch. This is an app on my Windows 10 box](../images/coding_03.png)

<hr>

**Coding Example for Math 4610 at USU: Getting Back to the Command Prompt**

<hr>
 
To exit the vim session and save the file, type in a colon character ":"
followed by x and return. The terminal will revert to a command terminal ready
to type in commands.

![Screenshot taken using **Snip & Sketch. This is an app on my Windows 10 box](../images/coding_04.png)

<hr>

**Coding Example for Math 4610 at USU: Compiling the Code** 

<hr>

At the command prompt, the first two lines will be as they were to start. The
next line is used to compile the code. That is,

     gcc -o hello hello.c

will compile the program and create an executable file for you. The last part
below is used to see what is in the directory. The executable file is

     hello.exe

![Screenshot taken using **Snip & Sketch. This is an app on my Windows 10 box](../images/coding_05.png)

<hr>

**Coding Example for Math 4610 at USU: Final Step - Run the Code** 

Once we have an executable file, hello.exe, the code can be run as follows.

     ./hello.exe

The output from this command will be as shown in the image below. The output is
printed on the first line.

![Screenshot taken using **Snip & Sketch. This is an app on my Windows 10 box](../images/coding_06.png)

<hr>

[Top of Lecture](https://jvkoebbe.github.io/math4610/lectures/lecture_01/md/lecture_01)

<hr>
