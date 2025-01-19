package ass4;

public class q1 {
    public static void main(String[] args) {
        //Parent obj=new Parent();
        Child c=new Child();
        c.show();

    }
    
}


abstract class Parent{
    void show(){
        System.out.println("Parent");
    }
}

class Child extends Parent{

}