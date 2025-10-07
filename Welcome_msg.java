public class Welcome_msg {

    public static String welcomeMessage(String name) {
        return "Hello " + name + ", Welcome to Java World!";
    }

    public static void main(String[] args) {
        String message = welcomeMessage("maheen");
        System.out.println(message);
    }
}