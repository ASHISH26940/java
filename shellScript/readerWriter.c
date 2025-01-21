#include<stdio.h>
#include<unistd.h>
#include<semaphore.h>
#include<pthread.h>

sem_t rw_mutex,mutex;
int rc=0;

void *wFn(void* args){
	while(1){
		sem_wait(&rw_mutex);
		printf("Writer %ld is writing \n",(long)args);
		sleep(2);
		sem_post(&rw_mutex);
		sleep(1);
	}
}

void *rFn(void* args){
	while(1){
		sem_wait(&mutex);
		rc++;
		if(rc==1)
			sem_wait(&rw_mutex);
		sem_post(&mutex);
		
		printf("Reader %ld is reading \n",(long)args);
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
	pthread_t w[2],r[5];
	sem_init(&rw_mutex,0,1);
	sem_init(&mutex,0,1);
	
	for(long i=0;i<5;i++){
		pthread_create(&r[i],NULL,rFn,(void*)i);
		if(i<3)
			pthread_create(&w[i],NULL,wFn,(void*)i);
			
	}
	for(long i=0;i<2;i++){
		
	}
	
	for(long i=0;i<5;i++){
		pthread_join(r[i],NULL);
		if(i<3)
			pthread_join(w[i],NULL);
	}
	return 0;
}
