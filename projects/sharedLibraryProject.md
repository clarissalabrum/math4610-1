## Project: How To Build A Shared Library

The code you write as you work through the homework for approximately solving mathematical problems should be reusable. At
least you should make a strong effort to make your code reusable. Once the code you write is debugged and can be used in
other applications, it makes sense that the code be put into a repository or some other form that allows repeated access to
the codes.

### Building a Shared Library for Unix/Linux Environments

In this section students will put together a shared library using the Unix/Linux archive utility the command that we will use
in a bash/csh shell is:

    ar()

with appropriate flags specified for various coding languages and options. Most of the material used to create this part of the
project can be found at the site:

    http://cygwin.org

As an example of how one can create a script that automatically creates a shared library, the author implemented the ar command
in the following script for creating any number of shared libraries.

    #
    # script name: jvklib
    # written by:  jvkII
    # purpose:     This routine will create a library from individual files
    #              containing fortran (or c) routines in separate files in a
    #              specified directory.
    #
    #-------------------------------------------------------------------------------
    # the next block of code sets some basic unix commands so that the work is not
    # interrupted by -i options and the like
    #-------------------------------------------------------------------------------
    # alias the change directory (cd), copy (cp), move (mv), remove (rm) commands to
    # get rid of the object modules without being prompted by the command - this is
    # a local declaration and does not effect the commands in other scripts or
    # windows
    #
    alias cd cd
    alias cp cp
    alias mv mv
    alias rm rm
    #
    # set an interrupt break
    #
    onintr user_break
    #
    # set the type of fortran command and options within the fortran compiler
    #
    set FORTYP = 'gfortran'
    set CCTYP = 'gcc'
    set OPTS = ' -g -C'
    #
    #-------------------------------------------------------------------------------
    # the next block grabs the arguments in order to set the location of the 
    # application being worked on or asks the user to set the arguments if not
    # specified 
    #-------------------------------------------------------------------------------
    # set the application folder location - for example, $HOME/research/prs3d
    #
    if($1 == '') then
      echo -n 'Enter the folder name where the application resides: '
      set APPFOLDER = ($<) 
    else
      set APPFOLDER = $1
    endif
    #
    # set the application name - for example, prs3d
    #
    if($2 == '') then
      echo -n 'Enter the application name - this should be the folder name: '
      set APPNAME = ($<) 
    else
      set APPNAME = $2
    endif
    #
    # determine the language to compile
    #
    if($3 == '') then
      echo -n 'Enter the file extension to use (e.g, f=gfortran or c=gcc): '
      set APPLANGUAGEFILEEXTENSION = ($<) 
    else
      set APPLANGUAGEFILEEXTENSION = $3
    endif
    #
    #-------------------------------------------------------------------------------
    # in this section the input to this script is tested to see if the locations
    # actually exist
    #-------------------------------------------------------------------------------
    # test the location of the application folder to make sure there is something
    # to work on
    #
    if(-e $APPFOLDER) then
    #
    # in the next line, the location of the library is set. the assumption is that
    # the library will be placed in a subfolder in the application folder that is
    # named 'lib'
    #
      set APPLIBFOLDER = $APPFOLDER/lib
    #
    # test to see if the lib folder exists
    #
      if(-e $APPLIBFOLDER) then
        set APPLIBFILENAME = $APPLIBFOLDER/$APPNAME'_'$APPLANGUAGEFILEEXTENSION'.a'
      else
        echo 'cannot find application library folder ' $APPLIBFOLDER 
        exit(1)
      endif
    #
    # next, test for the for the source folder where the script should look for the
    # fortran modules
    #
      set APPSRCFOLDER = $APPFOLDER/src
      if(-e $APPSRCFOLDER) then
      else
        echo 'cannot find application source folder ' $APPSRCFOLDER 
        exit(1)
      endif
    #
    # next, test for a log file for tracking errors in the compilation process and
    # other parts of the script.
    #
      set APPLOGFOLDER = $APPFOLDER/log
      if(-e $APPLOGFOLDER) then
        set APPLOGFILENAME = $APPLOGFOLDER/$APPNAME'lib'.log
      else
        mkdir APPLOGFOLDER
        set APPLOGFILENAME = $APPLOGFOLDER/$APPNAME'lib'.log
      endif
    #
    # if the application folder does not exist echo out a message
    #
    else
      echo 'cannot find application folder ' $APPFOLDER 
      exit(0)
    endif
    #
    #-------------------------------------------------------------------------------
    # the next block of the script performs the actual work to compile code and
    # create libraries and the like
    #-------------------------------------------------------------------------------
    # if the log file exists, remove and retouch the logfile for this run
    #
    if(-e $APPLOGFILENAME) rm $APPLOGFILENAME
    touch $APPLOGFILENAME
    #
    echo ' ' >> $APPLOGFILENAME
    echo ' ***** Error messages from compilation *****' >> $APPLOGFILENAME
    echo ' ' >> $APPLOGFILENAME
    #
    # get into the src folder where the fortran files should be located and
    # compiled individually
    #
    cd $APPSRCFOLDER
    #
    # if there is an old library file in the folder, remove the old library
    #
    echo '... removing old library files ...' >> $APPLOGFILENAME
    if(-e $APPLIBFILENAME) rm $APPLIBFILENAME
    #
    # set up the log file and printer a header to the file
    #
    echo ' ***** Error messages from the fortran compiler *****' >> $APPLOGFILENAME
    #
    # loop through the fortran files in the directory
    #
    echo ' ... compiling the fortran routines ...' >> $APPLOGFILENAME
    #
    # loop over the fortran source files in the folder
    #
    foreach filename (*.$APPLANGUAGEFILEEXTENSION)
       echo 'compiling ...' $filename >> $APPLOGFILENAME
       $FORTYP $OPTS -c $filename >>& $APPLOGFILENAME
    end
    #
    # create the archive/library using the compiled source files
    #
    echo ' ... creating library from object modules ...' >> $APPLOGFILENAME
    ar rcv $APPLIBFILENAME *.o >> $APPLOGFILENAME
    #
    # normal exit of the routine
    #
    echo '... the fortran library has been built ... ' >> $APPLOGFILENAME
    echo '... removing object files from compilation ...' >> $APPLOGFILENAME
    #
    # remove the object files since they are now in the archive/library
    #
    rm *.o
    #
    # copy the archive file and log file generated by this script to appropriate
    # places after ending the output from the script
    #
    echo ' ... copying library to ../lib ...' >> $APPLOGFILENAME
    echo '... exit ...' >> $APPLOGFILENAME
    #
    # done
    #
    exit(0)
    #
    # on an interrupt then print the following message
    #
    user_break:
    rm *.o
    echo >> $APPLOGFILENAME
    echo ">>>>>> " $APPNAME " was interrupted." >> $APPLOGFILENAME
    echo >> $APPLOGFILENAME
    exit(2)

### Dynamic Linked Library (DLL) Instructions

The information in this part of the project involves the creation of a Dynamic Linked Library (DLL) for use with codes written
on Microsoft Windows computers. You should use this to create your own DLLs for this course with the code written throughout
the semester. Most of the material for this project can be accessed by clicking on the following link.

https://cygwin.com/cygwin-ug-net/dll.html

So, let's start the process of building a DLL.
