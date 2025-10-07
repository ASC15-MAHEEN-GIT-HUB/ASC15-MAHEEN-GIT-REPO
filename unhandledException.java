package com.demo.Exceptions;

public class unhandledException {

    public static void main(String[] args) {
        int i=100;
        System.out.println("divide by zero");
        int result =i/0;
        System.out.println("abruptly terminated,so this does not execute");
        System.out.println(result);

//        int ii=100;
//        ii=ii*5+5;
//        ii=ii*(5+5);
//        System.out.println(ii);
    }
}