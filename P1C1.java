package com.demo.packages.p1;

public class P1C1 {
    private String  privateVar="private var";
    private void privateMethod(){
        System.out.println("Private Method!");
    }

    //package private var
    String packagePrivateVar="Package private var";
    void packagePrivateMethod(){
        System.out.println("Package Private Method");
    }

    //protected var
    protected String protectedvar="Protected Var";
    protected void protectedMethod(){
        System.out.println("protectedMethod!");
    }

    //PUBLIC VAR
    public String publicVar="public Var";
    public void publicVar(){
        System.out.println("public Method!!");
    }

    public static void main(String[] args) {
        P1C1 p1C1=new P1C1();
        System.out.println(p1C1.privateVar);
        p1C1.privateMethod();

        System.out.println(p1C1.packagePrivateVar);
        p1C1.packagePrivateMethod();

        System.out.println(p1C1.protectedvar);
        p1C1.protectedMethod();

        System.out.println(p1C1.publicVar);
        p1C1.publicVar();
    }
}

