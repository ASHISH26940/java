#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<semaphore.h>
#include<pthread.h>

#define bs 4

int buffer[bs];
int in=0,out=0;

sem_t empty,full;
pthread_mutex_t mutex;

void *producer(void* args){
	int item;
	while(1){
		item=rand()%100;
		sem_wait(&empty);
		pthread_mutex_lock(&mutex);
		buffer[in]=item;
		in=(in+1)%bs;
		printf("Producer %ld produces %d\n",(long)args,item);
		pthread_mutex_unlock(&mutex);
		sem_post(&full);
		sleep(1);
	}
}

void *consumer(void* args){
	int item;
	while(1){
		sem_wait(&full);
		pthread_mutex_lock(&mutex);
		item=buffer[out];
		out=(out+1)%bs;
		printf("Consumer %ld consumes %d\n",(long)args,item);
		pthread_mutex_unlock(&mutex);
		sem_post(&empty);
		sleep(1);
	}
}

int main(){
	pthread_t prod[3],cons[3];
	pthread_mutex_init(&mutex,NULL);
	sem_init(&empty,0,bs);
	sem_init(&full,0,0);
	for(long i=0;i<3;i++){
		pthread_create(&prod[i],NULL,producer,(void*)i);
		pthread_create(&cons[i],NULL,consumer,(void*)i);
	}
	
	for(int i=0;i<3;i++){
		pthread_join(prod[i],NULL);
		pthread_join(cons[i],NULL);
	}
	
	return 0;
}
