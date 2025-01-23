#include<stdio.h>
#include<stdlib.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<unistd.h>

int arm(int n){
	int num=n,sum=0,digits=0,temp,d;
	while(n > 0){
		digits++;
		n/=10;
	}
	n=num;
	
	while(n>0)
	{
		int p=1;
		d=n%10;
		for(int i=0;i<digits;i++)
		{
			p*=d;
		}
		sum+=p;
		n/=10;
	}
	return sum==num;
}

int main(){
	int pipefd[2];
	pid_t pid;
	int number;
	
	if(pipe(pipefd)==-1){
		return 1;
	}
	
	pid=fork();
	
	if(pid<0){
		return 1;
	}else if(pid>0){
		printf("Enter a number");
		scanf("%d\n",&number);
		close(pipefd[0]);
		write(pipefd[1],&number,sizeof(number));
		close(pipefd[1]);
		wait(NULL);
	}else{
		close(pipefd[1]);
		read(pipefd[0],&number,sizeof(number));
		close(pipefd[0]);
		if(arm(number)){
			printf("Armstrong number");
		}else{
			printf("not a armstrong number");
		}
		
	}
	return 0;
}
