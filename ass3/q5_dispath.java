package ass3;

public class q5_dispath {
    public static void main(String[] args) {
        A a;
        a = new A();
        a.show();

        a = new B();
        a.show();

        a = new C();
        a.show();

        a = new D();
        a.show();
    }
}

class A {
    void show() {
        System.out.println("A");
    }
}

class B extends A {
    @Override
    void show() {
        System.out.println("B");
    }
}

class C extends B {
    @Override
    void show() {
        System.out.println("C");
    }
}

class D extends C {
    @Override
    void show() {
        System.out.println("D");
    }
}
