/* - JAVA SYNTAX -

In Java, every application begins with a class name, and that class must match the filename (first letter should be
uppercase). Every line of code that runs in Java must be inside a class; */

public class JavaW3Notes {
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
        System.out.println(num4 < num5); // prints true
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

        // - If / Else -

        int num10 = 10;

        if (num10 < 5) {
            System.out.println("smaller than 5");
        } else if (num10 == 5) {
            System.out.println("equal to 5");
        } else {
            System.out.println("bigger than 5");
        }

        String ternaryVersion = (num10 < 20) ? "Smaller than 20" : "Not smaller than 20";
        System.out.println(ternaryVersion);

        // - Switch Cases -

        int digit = 5;

        switch(digit) {
            case 1,3,5,7,9:
                System.out.println("Odd");
                break;
            case 2,4,6,8:
                System.out.println("Even");
                break;
            default:
                System.out.println("Out of range");
        }

        // - While Loop -

        int counter = 0;
        while (counter < 3) {
            System.out.println("Yes");
            counter++;
        }

        for (int i = 0; i < 10; i++) {
            System.out.print(i + "\n"); // prints 0123456789 and then returns new line.
        }

        String[] cars = {"Volvo", "Mercedes", "Audi"}; // this is an array.

        for (String i: cars) { // this is called "for-each" loop. Iterates over an array.
            System.out.println(i);
        }

        for (int i = 0; i < 10; i++) {
            if (i == 3) {
                continue;
            } else if (i == 6) {
                break;
            }
            System.out.println(i);
        }

        // - Arrays -

        int[] numArray = {10,20,30,40};
        System.out.println(numArray[0]); // prints first index of numArray
        numArray[1] = 25; // change an array element.
        System.out.println("numArray has " + numArray.length + " elements.");

        int [][] myNumbers = { {1,2,3,4}, {5,6,7} }; // multi-dimensional array.
        System.out.println(myNumbers[1][1]); // prints 6

        for (int i = 0; i < myNumbers.length; i++) {
            for (int j = 0; j < myNumbers[i].length; j++) {
                System.out.println(myNumbers[i][j]);
            }
        }

        // - Methods -
        myMethod(); // prints this is a method.


        String johnsAge = doubleVariableMethod("John", 25);
        System.out.println(johnsAge); // prints John is 25

        int totalInt = plusMethod(3, 5);
        double totalDouble = plusMethod(3.2, 3.5); //method overloading. same name, different types.
        System.out.println(totalInt);
        System.out.println(totalDouble);


    }
    static void myMethod()
    // static means that the method belongs to the Main class and not an object of the Main class.
    {
        System.out.println("this is a method.");
    }

    // - Method Parameters and Return -

    static String doubleVariableMethod(String fname, int age)
    {
        return fname + " is " + age;
    }

    // - method Overloading -

    static int plusMethod(int a, int b)
    {
        return a + b;
    }

    static double plusMethod(double a, double b)
    {
        return a + b;
    }
}
