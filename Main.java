/* - JAVA SYNTAX -

In Java, every application begins with a class name, and that class must match the filename (first letter should be
uppercase). Every line of code that runs in Java must be inside a class; */

public class Main {
    // The main() method is required, and you will see it in every Java program:
    public static void main(String[] args) {
        System.out.println("Hello World");

        /* Save the code in Notepad as "Main.java". Open Command Prompt, navigate to the directory where you
        saved your file, and type "javac Main.java". This will compile your code. If there are no errors in the code,
        the command prompt will take you to the next line. Now, type "java Main" to run the file. */

        /* - VARIABLES -
        byte, short, int, long, float, double, boolean and char are called primitive data types. */

        String name = "John";
        // All Java variables must be identified with unique names. These unique names are called identifiers.
        String lastName = "Doe";
        String fullName = name + " " + lastName; // John Doe
        String fullName2 = name.concat(lastName); // JohnDoe
        System.out.println("Hello " + fullName);

        int num = 15;

        int num2;
        num2 = 16;
        num2 = 17;

        final int num3 = 18; //can't reassign new value later.

        int num4 = 19, num5 = 20;

        System.out.println(num + num2 + num3 + num4 + num5); // prints sum of 15 + 17 + 18 + 19 + 20

        double num6 = 5.77d;
        int num7 = (int) num6;
        // Type casting (Narrowing casting must be done manually by placing the type in parentheses)

        int num8 = 9;
        float num9 = num8; // Type casting (Widening casting is automatic, you don't need parentheses)
        float percentage = 5.66f;

        boolean isTrue = true;

        char character = 'D';

        String sevenLetters = "ABCDEFG";
        System.out.println("length of string is: " + sevenLetters.length());
        sevenLetters = sevenLetters.toLowerCase(); // "abcdefg"
        sevenLetters = sevenLetters.toUpperCase(); // "ABCDEFG"

        String indexFinder = "Please locate where 'locate' occurs.";
        System.out.println(indexFinder.indexOf("locate")); // prints 7


        // Java string methods are here: https://www.w3schools.com/java/java_ref_string.asp

    }

}
