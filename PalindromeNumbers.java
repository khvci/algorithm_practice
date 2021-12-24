import java.util.Scanner;

public class PalindromeNumbers {
    static boolean palindrome(long number) {
        long tempNumber = number,lastDigit, reverseNum = 0;

        while (tempNumber != 0) {
            lastDigit = tempNumber % 10;
            reverseNum *= 10;
            reverseNum += lastDigit;
            tempNumber /= 10;
        }

        if (number == reverseNum) {
            return true;
        } else {
            return false;
        }
    }

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Number to check: ");
        long number = input.nextLong();

        System.out.println(palindrome(number));

    }
}

/*

Input:

98765432123456789

Output:

true

*/
