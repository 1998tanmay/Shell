#include "types.h"
#include "user.h"
#include "fcntl.h"
#include "stat.h"


int main()
{

 
  
  
 
  int f=open("input",O_RDWR|O_CREATE);
  char str[]={'e','c','h','o',' ','t','\n','l','s','\n'};
  write(f,str,100);
  close(f);
  exit(0);
 

}
/*NOTE: we have stopped maintaining the x86 version of xv6, and switched
our efforts to the RISC-V version executeCommands
(https://github.com/mit-pdos/xv6-riscv.git)

xv6 is a re-implementation of Dennis Ritchie's and Ken Thompson's Unix
Version 6 (v6).  xv6 loosely follows the structure and style of v6,
but is implemented for a modern x86-based multiprocessor using ANSI C.

ACKNOWLEDGMENTS

xv6 is inspired by John Lions's Commentary on UNIX 6th Edition (Peer
to Peer Communications; ISBN: 1-57398-013-7; 1st edit$ */