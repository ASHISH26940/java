#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<pthread.h>

#define NUM 5

pthread_mutex_t left,right;

int* philosopher()
{
	int id=*(int*)args;
	free(arg);
	
	while(1){
		printf("Philosopher %d is thinking. \n",id);
		sleep(rand()%3+1);
		
		int left=id;
		int right=(id+1)%NUM;
		printf("Philosopher %d is hungry now",i);
		if(id%2==0)
		{
		pthread_mutex_lock(&left);
		printf("Philosopher %d Picked up the left fork",i);
		pthread_mutex_lock(&right);
		printf("Philosopher %d Picked up the right fork",i);
				
		}else{
			pthread_mutex_lock(&right);
			printf("Philosopher %d Picked up the right fork",i);
			pthread_mutex_lock(&left);
			printf("Philosopher %d Picked up the left fork",i);
			
		}
		
		printf("Philosopher %d is done eating",i);
		sleep(rand()%3+1);
		
		printf("Philosopher %d is putting down the left fork",i);
		pthread_mutex_unlock(&left);
		printf("Philosopher %d is putting down the right fork",i);
		pthread_mutex_unlock(&right);
	}
}

int main(){
	pthread_t phil[NUM];
	for(int i=0;i<NUM;i++)
	{
		pthread_mutex_init(&phil[i]);
	}
	return 0;
}
