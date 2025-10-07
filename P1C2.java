package com.demo.packages.p1;

public class P1C2 {
    public static void main(String[] args) {

        //PACKAGE PRIVATE WORKS IN OTHER CLASS WITHIN SAME PACKAGE
        P1C1 p1C1=new P1C1();
        System.out.println(p1C1.packagePrivateVar);
        p1C1.packagePrivateMethod();

        //Protected VAR From P1C1 Can Also Be Accessed
        System.out.println(p1C1.protectedvar);
        p1C1.protectedMethod();

        //public
        System.out.println(p1C1.publicVar);
        p1C1.publicVar();
    }
}