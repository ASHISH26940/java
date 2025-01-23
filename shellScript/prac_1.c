#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<semaphore.h>
#include<pthread.h>

sem_t rw_mutex,mutex;
int rc=0;

void *writeFn(void* args){
	while(1){
		sem_wait(&rw_mutex);
		printf("Writer %ld is writing\n",(long)args);
		sleep(2);
		sem_post(&rw_mutex);
		sleep(1);
	}
}

void *readFn(void* args){
	while(1){
		sem_wait(&mutex);
		rc++;
		if(rc==1)
			sem_wait(&rw_mutex);
		sem_post(&mutex);
		
		printf("Reader %ld is reading\n",(long)args);
		sleep(1);
		
		sem_wait(&mutex);
		rc--;
		if(rc==0)
			sem_post(&rw_mutex);
		sem_post(&mutex);
		sleep(1);
	}
}

int main(){
	pthread_t rd[5],wrt[2];
	sem_init(&rw_mutex,0,1);
	sem_init(&mutex,0,1);
	
	for(long i=0;i<5;i++){
		pthread_create(&rd[i],NULL,readFn,(void*)i);
		if(i<3)
			pthread_create(&wrt[i],NULL,writeFn,(void*)i);
	}
	
	for(int i=0;i<5;i++){
		pthread_join(rd[i],NULL);
		if(i<3)
			pthread_join(wrt[i],NULL);
	}
}
