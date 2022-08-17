#include "types.h"

#include "defs.h"
#include "fcntl.h"

void printf(int, const char*, ...);

int
main(int argc, char *argv[])
{ 
  
  
  int a;
  static int pid =0,c;
  char*p;
  p=argv[1];
   pid=0;
   c=0;
  while(*p){
  
  c=(int)*p ;
 
  c=c-48;
  pid=pid*10+c;
  
  p++;};

  a=numOpenFiles(pid);
  if(a==-1)exit(-1);
  
  printf(1,"Number of files opened:%d \n",a); 
  printf(1,"Memory allocated: %d\n",memAlloc(pid));
  getprocesstimedetails(pid);
  exit(0);
  }
  
  
