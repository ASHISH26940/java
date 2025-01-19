package ass3;

public class q5 {
    public static void main(String[] args) {
        A a=new A();
        B b=new B();
        C c=new C();
        D d=new D();
        a.show();
        b.show();
        c.show();
        d.show();
    }
}

class A{
    void show(){
        System.out.println("A");
    }
}

class B extends A{
    @Override
    void show(){
        System.out.println("B");
    }
}

class C extends B{
    @Override
    void show(){
        System.out.println("C");
    }
}

class D extends C{
    @Override
    void show(){
        System.out.println("D");
    }
}
