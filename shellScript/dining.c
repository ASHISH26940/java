#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<pthread.h>

#define NUM 5

pthread_mutex_t forks[NUM];

void* philosopher(void* args){
	int id=*((int*)args);
	free(arg);
	int left=id;
	int right=(id+1)%NUM;
	while(1){
		printf("Philosopher %d is thinking",id);
		sleep(rand()%3+1);
		printf("Philosopher %d is hungry and trying to eat",id);
		if(id%2==0){
			pthread_mutex_lock(&forks[left]);
			printf("Philosopher %d Picked the left fork",id);
			pthread_mutex_lock(&forks[right]);
			printf("Philosopher %d Picked the left fork",id);
		}else{
			pthread_mutex_lock(&forks[right]);
			printf("Philosopher %d Picked the right fork",id);
			pthread_mutex_lock(&forks[right]);
			printf("Philosopher %d Picked the left fork",id);
		}
		prinf("Philodopher %d is done eating\n",id);
		sleep(rand()%3+1);
		
        // Put down forks
        pthread_mutex_unlock(&forks[left_fork]);
        printf("Philosopher %d put down left fork.\n", id);
        pthread_mutex_unlock(&forks[right_fork]);
        printf("Philosopher %d put down right fork.\n", id);
	}
}

int main(){
	pthread_t threads[Num];
	int* id;
	for(int i=0;i<NUM;i++){
		pthread_mutex_init(&forks[i],NULL);
	}
	for(int i=0;i<NUM;i++){
		id=malloc(sizeof(int));
		*id=i;
		if(pthread_create(&threads[i],NULL,philosopher,id)!=0){
			perror("Failed to tcreate thread");
			return 1;
		}
	}
	
	 // Wait for all threads to finish (not required in this infinite loop example)
    for (int i = 0; i < NUM_PHILOSOPHERS; i++) {
        pthread_join(threads[i], NULL);
    }
	return 0;
}	
