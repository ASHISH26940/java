class MyRunnable implements Runnable{
    public MyRunnable(String name){
        System.out.println("Thread " + name + " is starting.");
    }
    @Override
    public void run(){
        try {
            for (int i = 0; i < 10; i++) {
                System.out.println("Thread " + Thread.currentThread().getName() + " is running.");
                Thread.sleep(1000);
            }
        } catch (InterruptedException e) {
            System.out.println("Thread " +  Thread.currentThread().getName() + " is interrupted.");
        }
        System.out.println("Thread " +  Thread.currentThread().getName() + " is exiting.");
    }
}

public class runJava {
    public static void main(String[] args) {
        MyRunnable r1=new MyRunnable("Thread1");
        Thread t1=new Thread(r1);
        t1.start();
        System.out.println("Running");
    }
}
