package com.demo.Exceptions;

public class handledException {
    //When result is declared globally java automatically initializes result with 0
//    this constructor code is auto generated
//    public handledException(){
//        result=0;
//    }

    int result;
    private void test(){
        try{
            int i=100;
            System.out.println("Divide by Zero");
            result=i/0;
        }catch(Exception e){
            System.out.println("Exception occurred : "+e);

        }
        System.out.println("Abruptly Terminated, so this code will not run");
        System.out.println(result);
    }
    public static void main(String[] args) {
            handledException he=new handledException();
            he.test();
    }
}
