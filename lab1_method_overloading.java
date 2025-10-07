public class lab1_method_overloading {
    public void add(int a, int b) {
        System.out.println("Sum: " + (a + b));
    }

    public void add(int a, int b, int c) {
        System.out.println("Sum: " + (a + b + c));
    }

    public void add(double a, double b) {
        System.out.println("Sum: " + (a + b));
    }

    public void add(String str, int b) {
        System.out.println("Concatenated: " + str + " " + b);
    }
    public static void main(String[] args) {
        lab1_method_overloading obj = new lab1_method_overloading();
        obj.add(10, 20);
        obj.add(10, 20, 30);
        obj.add(10.5, 20.1);
        obj.add("Hello", 20);
    }
}
