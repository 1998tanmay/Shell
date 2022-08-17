
#include "types.h"
#include "user.h"
#include "fcntl.h"
#include "stat.h"
#define MAX 100
struct arg{
	char **arg_ptr;
	int size;
};
int pipe_exe(struct arg * left,struct arg * right);
int par_exe(struct arg * left,struct arg * right);
int succ1_exe(struct arg * left,struct arg * right);
int succ2_exe(struct arg * left,struct arg * right);
int ioredir_exe(struct arg * left,struct arg * right);
int ioredir2_exe(struct arg * left,struct arg * right);
int exe_cmdfile(char * input);

int prompt_display(void)
{
	printf(1,"\nMyShell > ");
        return 0;
}
int nullify(char * comm[])
{
	int i=0;
	while(i<MAX)
	{
		comm[i]=0;
        i++;
	}
	return 0;
}
int valid(char * s)
{
	if(strcmp(s,"ls")==0) return 1;
	else if(strcmp(s,"grep")==0) return 1;
	else if(strcmp(s,"cat")==0) return 1;
	else if(strcmp(s,"echo")==0) return 1;
	else if(strcmp(s,"ps")==0) return 1;
	else if(strcmp(s,"procinfo")==0) return 1;
	else if(strcmp(s,"wc")==0) return 1;
	else if(strcmp(s,"exit")==0) return 2;
	else return 0;
}
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
	  //printf(1,"%s",des);
	  out--;
	  *out=0;
	  
	  return (count-1);
}
int arg_set(char * des[],char * src,int len)
{
	int j=0,i;
	
	des[j]=src;
	for(i=0;i<len;i++)
	{   
		if(src[i]==0)
		{
			des[++j]=&src[i+1];
		}
	}
	
	des[j+1]=0;
	src[i+1]=0;
	return j+1;
}
int get_input(char * buf, char * comm[])
{	char input[MAX];
    memset(input,0,MAX);
	gets(input, 100);
	int len=space_to_null(buf,input);
	int size =arg_set(comm,buf,len);
	return size;
}
int parse_arg(struct arg * cmd)
{   
	char ** p= cmd->arg_ptr;
	int i=0 , status;
	
	if(strcmp(p[0],"executeCommands")==0)
	{   
		if(exe_cmdfile(p[1])<0)return-1;
		return 0;
	}
	while(p[i]!=0)
	{
		if(*p[i]==';')
		{
			p[i]=0;
			struct arg left;
			struct arg right;
			left.size=i;left.arg_ptr=p;
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
			if(par_exe(&left,&right)<0)return-1;
            return 0;
		}	
		if(p[i][0]=='|'&& p[i][1]=='|')
		{   
			p[i]=0;
			struct arg left;
			struct arg right;
			left.size=i;left.arg_ptr=p;
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
			if(succ2_exe(&left,&right)<0)return-1;
            return 0;
		}

		if(p[i][0]=='&'&& p[i][1]=='&')
		{   
			p[i]=0;
			struct arg left;
			struct arg right;
			left.size=i;left.arg_ptr=p;
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
			if(succ1_exe(&left,&right)<0)return-1;
            return 0;
		}
		i++;
	}i=0;
	while(p[i]!=0)
	{
		if(p[i][0]=='|' && p[i][1]==0)
		{
			p[i]=0;
			struct arg left;
			struct arg right;
			left.size=i;left.arg_ptr=p;
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
			if(pipe_exe(&left,&right)<0)return-1;
            return 0;
		}
		i++;
	}
	i=0;
	while(p[i]!=0)
	{   
		
		
		if(p[i][0]=='<')
		{   
			p[i]=0;
			struct arg left;
			struct arg right;
			left.size=i;left.arg_ptr=p;
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
			if(ioredir_exe(&left,&right)<0)return-1;
            return 0;
		}
		if(p[i][0]=='>')
		{   
			p[i]=0;
			struct arg left;
			struct arg right;
			left.size=i;left.arg_ptr=p;
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
			if(ioredir2_exe(&left,&right)<0)return-1;
            return 0;
		}
		i++;
	}
	
	if(valid(p[0])==1)
	{		
		if(fork()==0)
	 	{ if(exec(p[0],p)<0)
		 exit(-1);
		 }
	    wait(&status);
		return status;
	}
	else if(valid(p[0])==2)
	{
		return 2;
	}
    else { 
		
		return -1;
	}
	
	
}

int 
main(void)
{  char buf[MAX];
   char *comm[MAX];
   while(1)
   { int flag;
     nullify(comm);
     memset(buf,0,MAX);
     prompt_display();
     int sz=get_input(buf,comm);
	 struct arg cmd;
	 cmd.arg_ptr=comm;
	 cmd.size=sz;
	 flag=(parse_arg(&cmd));
	 if(flag==2) {exit(0);}
	 if(flag==-1){printf(1,"Illegal command or arguments");}
   }

    return 0;
}
int pipe_exe(struct arg * left,struct arg * right)
{
	int s1,s2;
	int fd[2];                            
    pipe(fd);     
    if(fork()==0)                                  
    {       
       	close(1);
   		dup(fd[1]);
   		close(fd[0]);
   		close(fd[1]);
	  	parse_arg(left);
       	exit(0);
    }                                            
   	if(fork()==0)                              
    {  	
		close(0);
   		dup(fd[0]);
   		close(fd[0]);
   		close(fd[1]); 
       	parse_arg(right);
        exit(0);
    }                                        
    close(fd[0]);                   
    close(fd[1]);                    
    wait(&s1); wait(&s2);
	if(s1==-1||s2==-1)return -1;
	return 0;
}
int par_exe(struct arg * left,struct arg * right)
{
	
	int s1,s2;
	 int pid1;
	 pid1=fork();
	if(pid1<0)return-1;
	if(pid1==0)
	 {
		parse_arg(left); exit(0);
	 }
	 int pid2;
	pid2=fork();
	if(pid2<0)return-1;
	if(pid2==0)
	 {
		 parse_arg(right);
		 exit(0);
	 }
	 wait(&s1);
	 wait(&s2);
	 if(s1==-1||s2==-1)return -1;
	 return 0;

}
int succ1_exe(struct arg * left,struct arg * right)
{   
	int s1;
	int pid1;
	pid1=fork();
	if(pid1<0)return-1;
	if(pid1==0)
    {   int status;
        int pid2;
		pid2=fork();
		if(pid2<0)return-1;
		if(pid2==0)
        {
           if(parse_arg(left)<0)exit(-1);
           exit(0); 
        }
        wait(&status);
		
        if(status!=0)exit(0);
        parse_arg(right);
        exit(0);
    }
	wait(&s1);
	if(s1==-1)return -1;
	return 0;
	
} 
int succ2_exe(struct arg * left,struct arg * right)
{
    int s;
    int pid1;
	pid1=fork();
	if(pid1<0)return-1;
	if(pid1==0)
    {   int status;
        int pid2;
	    pid2=fork();
	    if(pid2<0)return-1;
	    if(pid2==0)
        {
           if(parse_arg(left)<0)exit(-1);
           exit(0); 
        }
        wait(&status);
		
        if(status==0)exit(0);
        else parse_arg(right);
        exit(0);
    }
	wait(&s);
	if(s==-1)return -1;
	return 0;
	
} 
int ioredir_exe(struct arg * left,struct arg * right)
{   
	int out=0,i=0,s;
	char ** p = right->arg_ptr;
	while(p[i]!=0)
	{
		if(*p[i]=='>'){out=1;break;}
		i++;
	}
	
	int pid;
	pid=fork();
	if(pid<0)return-1;
	if(pid==0)
	{
		int f1= open(p[i-1], O_RDONLY);
        close(0);
        dup(f1);
        close(f1);
		if(out==1)
		{
		int f2 = open(p[i+1], O_RDWR|O_CREATE) ;
        close(1);
        dup(f2);
        close(f2);
		}
		if (parse_arg(left)<0)exit(-1);
		exit(0);
	}
	wait(&s);
	if(s!=0)return -1;
	return 0;
} 
int ioredir2_exe(struct arg * left,struct arg * right)
{

	int in=0,i=0,s;
	char ** p = right->arg_ptr;
	while(p[i]!=0)
	{
		if(*p[i]=='<'){in=1;break;}
		i++;
	}
	int pid;
	pid=fork();
	if(pid<0)return-1;
	if(pid==0)
	{
		int f2 = open(p[i-1], O_RDWR|O_CREATE) ;
        close(1);
        dup(f2);
        close(f2);
		if(in==1)
		{
		int f1= open(p[i+1], O_RDONLY);
        close(0);
        dup(f1);
        close(f1);
		}		
		if(parse_arg(left)<0)exit(-1);
		exit(0);
	}
	wait(&s);
	if(s!=0)return -1;
	return 0;
}
int exe_cmdfile(char * input)
{   
	int f1;

	f1 = open(input, 0) ;
      
     
	int n,count;
    char buf[1000];
	count=1000;
	n = read(f1, buf, sizeof(buf));
	
    write(f1, buf, n);
      
	close(f1);
	char temp_cmd[MAX];
	int j=0,i=0;
    while(count--)
	{   
		temp_cmd[j]=buf[i];
		if(buf[i]=='\n')
		{   
			char b[MAX],*temp_comm[MAX];
			int len=space_to_null(b,temp_cmd);
	        int size =arg_set(temp_comm,b,len);
			if(size<1)return-1;
            struct arg temp;
			temp.arg_ptr=temp_comm;
			temp.size=size;
			int flag=parse_arg(&temp);
			if(flag==2) {exit(0);}
	        if(flag==-1){printf(1,"Illegal command or arguments");}
			j=0;
		}
		j++;i++;
	}
	return 0;

}







