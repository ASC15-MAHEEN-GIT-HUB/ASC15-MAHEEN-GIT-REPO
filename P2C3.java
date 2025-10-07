package com.demo.packages.p2;

import com.demo.packages.p1.P1C1;
import com.demo.packages.p1.P1C3;

public class P2C3 extends P1C3 {
    public static void main(String[] args) {
//        P1C1 p1C1=new P1C1();

        //WHILE INHERITING P1C1 EXCEPT PRIVATE ALL OBJECTS ARE AVAILABLE
//        System.out.println(p1C1.privateVar);
//        p1C1.privateMethod();

        //THESE 2 WILL WORK

//        System.out.println(p1C1.packagePrivateVar);
//        p1C1.packagePrivateMethod();
//
//        System.out.println(p1C1.protectedvar);
//        p1C1.protectedMethod();

        //test ACCESS

        P1C3 p1C3=new P1C3();
        p1C3.testAccess();

    }
    public void testAccess(){
        P1C1 p1C1=new P1C1();

//        System.out.println(p1C1.packagePrivateVar);
//        p1C1.packagePrivateMethod();
//
//        System.out.println(p1C1.protectedvar);
//        p1C1.protectedMethod();
//
//        //*****************************************************************
//        System.out.println(packagePrivateVar+"\t by inheritance");
//        packagePrivateMethod(); //Actual inheritance method
//
        //THE ABOVE CODE WONT WORK BECAUSE IT IS ISTANTIATION AND NOT INHERITANCE

        System.out.println(protectedvar+"\t by inheritance");
        protectedMethod();

        //PUBLIC VAR AND METHOD
        System.out.println(p1C1.publicVar);
        p1C1.publicVar();

    }
}




