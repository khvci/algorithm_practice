import java.util.Scanner;

public class JavaPrimeChecker {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        while (true) {
            System.out.print("Number to check: ");
            int num = input.nextInt();
            System.out.println(isPrime(num) ? "true" : "false");
        }
    }

    static boolean isPrime(int num) {
        boolean numIsPrime = true;

        if (num < 2) {
            numIsPrime = false;
        } else {
            for (int i = 2; i < num; i++) {
                if (num % i == 0) {
                    numIsPrime = false;
                    break;
                }
            }
        }

        return numIsPrime;
    }
}
