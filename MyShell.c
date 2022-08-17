
#include "types.h"
#include "user.h"
#include "fcntl.h"

#define MAX 100

char input[MAX];
char input_rw[MAX];
char left[MAX];
char right[MAX];
int  arg_length[2];

//sets all pointers to null
int nullify(char * comm[])
{
	int n=100;
	while(n--)
	{
		*comm[n-1]=0;
	}
	return 0;
}

//displays MyShell >
int prompt_display(void)
{
	printf(1,"\nMyShell > ");
        return 0;
}
//gets input command in input[]
int get_input(void)
{	
	gets(input, 100);
	
	return 0;
}
//sets whitespace and newline charater to null
int space_to_null(char * des,char * src)
{
	memset(des,0,MAX);
	char *in,*out;
	int count=0;
	out=des;in=src;
	while(*in!=0)
	  {
	    if(*in==' ')*out=0;
	    else *out=*in;
	    out++;in++;count++;
	  }
	  out--;
	  *out=0;
	  return (count-1);
}
//sets up the pointer in des array to point at strings in src
int arg_set(char * des[],char * src,int len)
{
	int j=0,i;
	//nullify(des);
	des[j]=src;
	for(i=0;i<len;i++)
	{   
		if(src[i]==0)
		{
			des[++j]=&src[i+1];
		}
	}
	des[j]=0;
	src[i+1]=0;
	return 0;
}
int par_exe(void)
{
	char * left_arg[MAX], *right_arg[MAX];
	arg_set(left_arg,left,arg_length[0]);
	arg_set(right_arg,right,arg_length[1]);
	
	 int i=fork();
	 if(i==0)
	 {
		 exec(left_arg[0],left_arg); exit(0);
	 }
	 int j=fork();
	 if(j==0)
	 {
		 exec(right_arg[0],right_arg);
		 exit(0);
	 }
	 wait(0);
	 wait(0);
	 return 0;

}
//executes pipe commands
int pipe_exe(void)
{
	char * left_arg[MAX], *right_arg[MAX];
	arg_set(left_arg,left,arg_length[0]);
	arg_set(right_arg,right,arg_length[1]);
	
	int fd[2];                            
    pipe(fd);     
    if(fork()==0)                                  
    {       
       	close(1);
   		dup(fd[1]);
   		close(fd[0]);
   		close(fd[1]);
	  	exec(left_arg[0],left_arg);
       	exit(0);
    }                                            
   	if(fork()==0)                              
    {  	
		close(0);
   		dup(fd[0]);
   		close(fd[0]);
   		close(fd[1]); 
       	exec(right_arg[0],right_arg);
        exit(0);
    }                                        
    close(fd[0]);                   
    close(fd[1]);                    
    wait(0); wait(0);
	return 0;
}
//sets up left and right array with respective argument string 
int pipe_set(int div,int total)
{   
	memset(left,0,MAX);
    memset(right,0,MAX);
	int i;
	for(i=0;i<div;i++)
	{
		left[i]=input_rw[i];
	}
	arg_length[0]=div;
	i=div+2;int j=0;
	for(;i<total;i++)
	{
		right[j++]=input_rw[i];
	}
	arg_length[1]=j+1;
	
	return 0;
}

int cat_string(char * comm[])
{   int str_len,i;
	str_len=space_to_null(input_rw,input);

	for(i=0;i<str_len;i++)
	{   
		
		if(input_rw[i]=='|'){pipe_set(i,str_len);return 2;}
		//if(input_rw[i]=='<'||input_rw[i]=='>'){}
		if(input_rw[i]==';'){ pipe_set(i,str_len);return 4;}
	}
	
	arg_set(comm,input_rw,str_len);
	if(strcmp(comm[0],"exit")==0)return 3;
	else if(strcmp(comm[0],"ls")==0)return 1;
	else if(strcmp(comm[0],"cat")==0)return 1;
	else if(strcmp(comm[0],"grep")==0)return 1;
	else if(strcmp(comm[0],"echo")==0)return 1;
	else if(strcmp(comm[0],"ps")==0)return 1;
	else if(strcmp(comm[0],"procinfo")==0)return 1;
	else return 0;

}
int run(char * comm[])
{
	int flag;
	flag=cat_string(comm);
	if(flag==0)printf(1,"Illegal command or arguments");
	else if(flag==1)exec(comm[0],comm);
	else if(flag==2)pipe_exe();
	else if(flag==4)par_exe();
	return 0;
}

int 
main(void)
{
   char *comm[MAX];
   while(1)
   {
     memset(input,0,MAX);
     memset(left,0,MAX);
     memset(right,0,MAX);
     nullify(comm);
     prompt_display();
     get_input();
	 run(comm);
   }

    return 0;
}