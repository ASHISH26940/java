

abstract class ABST{
    void display(){
        System.out.println("This is a concrete method in an abstract class");
    }
}

public class abst1 {
    public static void main(String[] args) {
        ABST obj=new ABST(){};
        obj.display();
    }
}
