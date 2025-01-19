package com;

import com.example.t1;

public class coms extends t1 {
    public void display1com() {
        System.out.println("Hello from com");
    }
}

class test{
    public static void main(String[] args) {
        coms c = new coms();
        c.display1com();
        t1 t = new t1();
        t.example();
    }
}