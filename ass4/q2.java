package ass4;

public class q2 {
    public static void main(String[] args) {
        B b = new B();
        b.m1();
    }
}


abstract class A{
    abstract void m1();
    abstract void m2();
    abstract void m3();
}

class B extends A{
    @Override
    void m1(){}
}
