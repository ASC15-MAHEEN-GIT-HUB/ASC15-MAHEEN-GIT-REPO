public class Largest_number {

        public static int largest(int a, int b, int c) {
            return Math.max(a, Math.max(b, c));
        }

    public static void main(String[] args) {
        int result = largest(67, 888, 798);
        System.out.println("Largest: " + result);
    }
}
