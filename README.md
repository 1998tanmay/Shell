# Shell
## Files to check 
  shell.c (400+ lines of code)

##Description

In this assignment, you will be writing a shell for xv6. Your shell should be able to execute commands, handle arguments to the commands, and provide some functionality of a normal shell (discussed below).

Shell is a program which reads from standard input Stream and output to standard output stream.
You should write the program in C and You should put your code in the same  xv6-public folder and modify the Makefile to compile it. Refer to know how to create and compile a C program that can be executed using sh shell.
After Your VM boot xv6 you will call your shell program using the default sh shell.
Shell when invoked should display a prompt “MyShell>” instead of xv6 shell $ sign and then wait for the user loop.
When an input is entered, the program should first check whether input is a legal (one of the commands given below) command. If not, print a message “Illegal command or arguments” and go back to display the prompt and wait for user input. Do not exit your program.
If the command is legal and has the right number of arguments, execute it using the given strategy, wait until the command is finished (using the wait system call in the parent),and then print the shell prompt and wait for the next input.
Parse the command and create an array of command name and arguments given.
Fork a child process and use exec to execute a corresponding system call or executable. While the main process waits for the child process to finish. When the child exits, the wait call returns to the parent process which will then print the Shell prompt and wait for the user to enter commands again.
Refer XV6 Source code for  more details on exec command.
Example

if(fork() == 0)

   {

       exec(comm->argv[0],comm->argv);

       exit();

   }

wait();


For commands which do not have an executable already and mentioned below, you must code these commands in the child process using only POSIX compliant UNIX system calls. We will indicate for each command whether there is an executable that you can use or you must implement it from scratch.A description of the custom functions to be written and executed using the custom shell is as follow

Useful system calls for this assignment:

pipe, dup, exec, fork, wait

To find reference for any system call use man pages ex: man 2 fork

How to use man pages use : man man



A description of the functionality Your custom shell should support is as follows :


Few commands your shell should be able to support which are already present in xv6

ls
cat
grep
echo
wc

You can directly execute these commands.


Part A:Maintaining Exit Status of a process.                                                       [10]




int exit(int) and int wait(int *status)
In this part you must extend the current xv6 process implementation so as to maintain an exit status.First, you must add a field to the process structure (see proc.h) in order to save an exit status of the terminated process.


(a)Change the exit system call signature to int exit(int status) from int exit(void) The exit system call must act as previously defined (i.e., terminate the current process) but it must also store the exit status of the terminated process in the corresponding proc structure.In order to make the changes in exit system call you must update the following files: user.h, defs.h, sysproc.c, proc.c and all the user space programs that uses exit system call.

Change exit() call exit(0) for success and exit(-1) for failure.


(b) Update the wait system call signature to int wait(int *status) . The wait system call must prevent the current process from execution until any of its child processes is terminated (if any exists) and return the terminated child exit status through the status argument Status can be fetched from proc struct set by exit() sys call.

The system call must return the process id of the child that was terminated or -1 if no child exists (or unexpected error occurred) and you may set -1 in the status variable if null is not provided.


Change all the wait() sys calls to wait(0) //0 for denoting null pointer.

Your shell must get the status of exit() using wait(&status)


Note

The wait system call can receive NULL as an argument. In this case the child’s exit status must be discarded.
IN XV6 Currently, each user program should explicitly perform an exit system call in order to terminate its execution if no such call is made, the process crushes.
Useful resource :

Getting the int pointer variable in sys_wait


 int *p;

 if(argptr(0, (void*)&p, sizeof(int))<0){

   return -1;

 }




Getting the int variable in sys_exit

int status;

 if( argint(0, &status) < 0 ){

   return -1;

 }





Part B: Process related commands                                                                          [20]


ps                                                                                                                      [10]
This command should output the pids and process states of all the processes in xv6.

Example:

Shell> ps

init    1    SLEEPING

sh     2    SLEEPING


Hint: See how xv6 functions in proc.c use ptable.


Explanation:

1.Create a syscall name psinfo in proc.c which iterates over ptable.proc[] and outputs pid, name, and state.

2.You can directly execute psinfo sys call when ps is entered

Or

2. You can create a user program named ps that will call the system call created by you and then use exec() to execute your program. This approach will not require checking the command name to execute ps.


Process Information                                                                                                   [10]

procinfo <pid>
It is time to use the system calls you created in Assignment-1. The procinfo command takes process ID as argument. This command should display Number of files opened by the process, the heap memory used by the process, and the time details for that process.

You have created the system calls for each of this information in Assignment-1 and are free to use those for the implementation of procinfo.


E.g:

Shell> procinfo 3

Number of files opened: 2

Memory allocated: 350

Creation time: 30:5:4 01:02:2021

Last Context Switched in time: 01:6:4 01:02:2021

Last Context Switched out time: 55:6:4 01:02:2021


Goal:Get familiar with exec,fork and wait system calls

Hint:

use numOpenfiles, memAlloc, getprocesstimedetails (System calls created in Assignment 1).
For specific pid, these functions need to iterate over ptable.proc, and search for the given pid, return information(number of files, heap mem, process time).
Create a user program procinfo which takes pid as input and passes pid to the aforementioned system calls with given pid and output is printed by system call itself.


Part C : IO Handling (Pipe and Redirection)                                                      [40]


Goal : To get familiar with dup,close,open and pipe System Calls

Pipe                                                                                                                   [10]
A pipe in linux can be used to pass the output of one command to another       command. It is represented with a “|” symbol. You must implement a pipe in your shell.

Example:

myshell> ls | wc

2 4 15116


How to implement:

Parent Process creates a pipe using a pipe() system call.
After that you should create a two child process.
In child process 1 change the output stream file descriptor (ie fd: 1 to a pipe output file descriptor ex:
  close(1);

       dup(pipefd[1]);

       close(pipefd[0]);

       close(pipefd[1]);


In child process 2 change the input stream file descriptor (ie fd: 0 to a pipe input file descriptor ex:
       close(0);

       dup(pipefd[0]);

       close(pipefd[0]);

       close(pipefd[1]);


Execute command 1 in child process 1 and execute command 2 in child process 2.
Parent Process should close both the pipe file descriptor after creating the child process and before calling wait() on both child processes.
You should call wait only after creating both child processes.
Pipe will not work if child process 1 is created and you call wait() on that  before creating child process 2.
I/O Redirection                                                                                                 [15]
Your shell must support i/o-redirection on both STDIN and STDOUT​ i.e., the following command line input,

a. MyShell> programName arg1 arg2 < inputfile > outputfile

should execute the program ​programName​ with arguments ​arg1​ and ​arg2​ , the STDIN FILE stream replaced by ​inputfile​and the STDOUT FILE stream replaced by ​outputfile​.


b. myShell> command1 < inputfile | command2 > outputfile

should execute the command command1​ with the STDIN FILE stream replaced by inputfile​and then pipe its output to the input for the command2 with the STDOUT FILE stream replaced by ​outputfile​ .

For more clarity about pipe() check this out pipe(2) - Linux manual page.


With output redirection, if the redirection character is ​ > ​then the ​output file​ is created if it does not exist and truncated if it does.


I/O redirection can be accomplished in the child process immediately after the​ fork ​and before the exec​ command. At this point, the child has inherited all the file handles of its parent and still has access to a copy of the parent memory. Thus, it will know if redirection is to be performed or not. If it does, then the child process will change its ​stdin ​and/or ​stdout ​file streams. Note that this will only affect the child file descriptors and not the parent.


You can use ​open system call ​to create file descriptors for ​input file ​and/or ​output file​ and then use dup​ to replace either the ​stdin​ descriptor (​STDIN_FILENO​ ie fd2​ ) or the stdout descriptor (​STDOUT_FILENO​ ie fd 2​).

To change the fd set use the combination of close and dup command .



 Parallel Execution                                                                                           [15]
Your shell should be able to execute two commands simultaneously by spawning two child processes while the parent shell process waits for both of them to complete. Implement this by an operator ; which when called as command1 ; command2 should execute both commands in parallel (not sequential). The shell should only display the prompt for the next command once both of the commands are done executing. You can assume that there won’t be more than two commands executed in parallel.

To implement this :

a. Fork two processes and execute the required commands in both of them. Save the pid of both

the processes.

b. The parent should call a wait on both the pids. Look up the syntax of ‘wait’’ to implement this.

Example:

myshell> echo TA ; ls

TA

Desktop Downloads Documents Music Photos Videos




Part D :                                                                                                                         [15]


executeCommands <filename>                                                                      [10]
Execute the commands mentioned in a file. The shell will have to execute each line one by one.

E.g: file may contain

cat README

cat README > hello.txt

ls ; cat < README | grep xv6 > helloworld.txt


And the shell must execute each line one by one.


Exit                                                                                                                      [5]
You should be able to exit the shell by typing in a command named exit In all of the commands, make sure to reap the dead child (using wait) processes and avoid zombies.Make sure that if execution of any commands results in an error, the error messages thrown by the program are printed. Explicitly check that you do not leave any zombie processes on exit from the shell.

Exec:

Shell> exit

$


Illegal command or arguments

Your Shell Should print the message “Illegal command or arguments” when any other command Not mentioned or illegal command is used and go back to display the prompt and wait for user input. Do not exit your program.

Example :

Shell>ll

Illegal command or arguments

Shell>


Part E: Successive Execution                                                                       [15]  


&&,  ||
                                                                                                                                           

Your shell should be able to execute two commands successively ie(one after another).Implement this using && and || logical operators.The second command will only execute after the first command has been executed.


In case of && execute the second command only if the first command returns success (ie status value 0) use wait call to get the exit status.

In case of || execute the second command only if the first command returns a non-zero exit status use wait to get the exit status


To implement this :

First, fork a new child process to execute this command.

Execute the first command using the exec system in the child process.

Get the return value of the child process using wait call.

Use branching on the basis of exit status to execute the second command using fork and exec.

Note : You can Assume only two commands will be executed successively.

        Example

MyShell> grep && echo TA

usage: grep pattern [file ...]


Explanation : grep call failed due to empty pattern echo will not be executed


MyShell> ls && echo TA

wc                 2 16 16996

shell              2 17 30608

zombie             2 18 14812

console            3 19 0

TA

Explanation : Since ls call succeeds TA echo command will be executed.


MyShell> ls || echo TA

wc                 2 16 16996

shell              2 17 30608

zombie             2 18 14812

console            3 19 0


Explanation : Since ls call succeeds TA echo will not becommand will be executed.


MyShell> grep || echo TA

TA

Explanation : Since Comand 1 fails command 2 has been executed due to || operator.



Guidelines :

You Should close all the files opened using Shell process before executing next command using close system call. We will check no of files opened using numOpenFiles and if files are not closed it can lead to reduction in marks.
Any Command Can contains zero or more no of arguments and may contain IO redirection (ie. >, <).
Two Commands using pipe may contain IO redirection as well, Either first command reading from file or second command writing to a file or both.
Example:

Shell> cat <shell | wc > output.txt  


Valid Assumptions :

Use exec() for existing XV6 System calls.
For Short-Circuiting and Parallel Execution you can assume only two commands will be given .Ex ls ; echo TA
 Assume that the redirection symbols, ​ <​ , ​> ​ ​will be delimited from other command line arguments by white space - one or more spaces.
To test pipe utility and I/O redirection you have to implement these type of commands:
cat <file_name> | grep <pattern_string>

cat <file_name> > output_file.txt

grep <pattern_string> < input_file.txt > output_file.txt


Compilation:

Write your logic in a file shell.c
Modify the makefile to compile the shell.

Resource : https://www.youtube.com/watch?v=ikcfQw4FPEw

How to modify makefile to compile your code.


Running:

Run the virtual machine using ‘make qemu-nox’ or ‘make qemu’
Run the shell by entering “shell”

Submission Instructions:

Create a folder named <rollno_assign2>
Add your modified makefile, shell.c and any other modified files.
Submit the tar file <rollno_assign2.tar.gz>.
