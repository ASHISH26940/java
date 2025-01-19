package ass2;

public class q8 {
    public static void main(String[] args) {
        Methods m=new Methods();
        m.method().display();
    }
}

class Methods{
    Methods method(){
        return this;
    }
    void display(){
        System.out.println("Hello");
    }
}
