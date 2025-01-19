
class MyThread extends Thread{
    public MyThread(String name) {
        super(name);
        System.out.println("Thread " + name + " is starting.");
    }

    @Override
    public void run() {
        try {
            for (int i = 0; i < 10; i++) {
                System.out.println("Thread " + getName() + " is running.");
                Thread.sleep(1000);
            }
        } catch (InterruptedException e) {
            System.out.println("Thread " + getName() + " is interrupted.");
        }
        System.out.println("Thread " + getName() + " is exiting.");
    }
}


public class threadIng {
    public static void main(String[] args) {
        MyThread t1=new MyThread("Thread1");
        t1.start();
        System.out.println("Running");
    }
}


