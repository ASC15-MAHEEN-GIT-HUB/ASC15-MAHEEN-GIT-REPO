package com.demo.funda;

public class EqualsVsIdentical {
    static Float f22;

    public static void main(String[] args) {
        System.out.println(f22); //will return null
        Float f1=new Float(5.5f);
        System.out.println(new Float(5.5f));
        Float f2=new Float(5.5f);
        System.out.println(f1.equals(f2)); //true
        Float f3=f2;
        System.out.println(f3); //true
        f3=5.6f;
        System.out.println(f3); //true
        System.out.println(f2); //true
        System.out.println(f1); //false

        System.out.println("\nchecking f1 equals f2 and f1==f2\n");
        System.out.println(f1.equals(f2));
        System.out.println(f1==f2);


        f1=f2;
        System.out.println("\nchecking after declarring f1=f2\n");
        System.out.println(f1.equals(f2));
        System.out.println(f1==f2);

    }
}

