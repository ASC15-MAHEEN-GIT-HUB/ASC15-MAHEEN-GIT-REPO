package com.demo.funda;

public class Wrappertypes {
    public static void main(String args[]) {
        //example to demonstrate methods of float wrapper
        float floatprimitive = 10.5f;
        Float floatObj = Float.valueOf(floatprimitive); //boxing or wrapping
        System.out.println("float value: " + floatObj);

        //some common methods used in real time applications
        //isNaN() - checks if the value is not a number
        //Example of isNaN() method. the belowproduces NaN becuase of 0.0/0.0 which is undefined

        float nanValue = 0.0f / 0.0f;//this will give NaN
        Float nanObj = Float.valueOf(nanValue);

        System.out.println("isNaN: " + floatObj.isNaN());
        System.out.println("isNaN (NAN value): " + nanObj.isNaN());

        //other methods
        System.out.println("isInfinite: "+floatObj.isInfinite());
        System.out.println("toString: "+floatObj+"Float");
        System.out.println("hashcode: "+floatObj.hashCode());
        System.out.println("compareTo (with 10.5f): "+floatObj.compareTo(10.5f));
        System.out.println("compareTo (with 20.5f): "+floatObj.compareTo(20.5f));
        System.out.println("compareTo (with 20.5f): "+floatObj.compareTo(5.5f));
        System.out.println("equals (with 10.5): "+floatObj.equals(10.5f));






    }



}
