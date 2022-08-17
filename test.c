#include  "fcntl.h"                          
#include  "types.h"                         
#include  "stat.h"                           
#include  "user.h"                            
                         
int main(void)
{   int in=1;
    int out=1;
    char *cmd[]={"shellcopy",0};
if (fork() == 0)
{ 
    
    if (in)
    {
        int fd0 = open("/input.txt", O_RDONLY);
        close(0);
        dup(fd0);
        close(fd0);
    }

    if (out)
    {  
        int fd1 = open("/home/tanmay/xv6-public/output", O_WRONLY) ;
        
        close(1);
        
        dup(fd1);
        
        close(fd1);
        
    }
    
    exec(cmd[0],cmd);   // Or your preferred alternative
    
    exit(0);
}
wait(0);

}