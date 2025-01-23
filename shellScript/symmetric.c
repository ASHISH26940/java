#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>

void symmetric(int arr[],int size){
	for(int i=0;i<size/2;i++)
	{
		if(arr[i]!=arr[size-i-1])
			return false;
	}
	return true;
}

int main(){
	int pidfd[2];
	pid_t pid;
	if(pipe(pidfd)==-1)
	{
		println("no pidfd");
	}
}
