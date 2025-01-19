package p2;

import p1.*;
import p2.meriM;

public class teriM extends p1 {
    public void display() {
        System.out.println("Hello from p2");
    }
    public void display2() {
        System.out.println("Hello from p2");
    }
}

class p2 {
    public static void main(String[] args) {
        teriM obj= new teriM();
        obj.display();
        obj.display2();
        obj.display3();
        meriM obj2 = new meriM();
        obj2.display4();
    }
}