/* - JAVA SYNTAX -

In Java, every application begins with a class name, and that class must match the filename (first letter should be
uppercase). Every line of code that runs in Java must be inside a class; */

import java.util.Arrays;

public class JavaW3Notes {
    private String pName; // private = restricted access, see encapsulation below.
    int attributeX; //Create a class attribute. See classes and objects down below.
    public JavaW3Notes() // Create a class constructor for the Main class
    {
        attributeX = 5; // Set the initial value for the class attribute x
        //Note that the constructor name must match the class name, and it cannot have a return type (like void).
        //Also note that the constructor is called when the object is created.
        //All classes have constructors by default: if you do not create a class constructor yourself, Java creates
        // one for you. However, then you are not able to set initial values for object attributes.
    }

    // Everything in Java is associated with classes and objects, along with its attributes and methods.
    // The main() method is required, and you will see it in every Java program:
    public static void main(String[] args) {
        System.out.println("Hello World");

        /* Save the code in Notepad as "Main.java". Open Command Prompt, navigate to the directory where you
        saved your file, and type "javac Main.java". This will compile your code. If there are no errors in the code,
        the command prompt will take you to the next line. Now, type "java Main" to run the file. */

        /* - VARIABLES -
        byte, short, int, long, float, double, boolean and char are called primitive data types.
        variables are attributes(a.k.a. fields) within the class.*/

        String name = "John";
        // All Java variables must be identified with unique names. These unique names are called identifiers.
        String lastName = "Doe";
        String fullName = name + " " + lastName; // John Doe
        String fullName2 = name.concat(lastName); // JohnDoe
        System.out.println("Hello " + fullName);

        final boolean cantChange = true; // can't reassign another value later

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

        String johnsAge = doubleVariableMethod("John", 25);
        System.out.println(johnsAge); // prints John is 25

        int totalInt = plusMethod(3, 5);
        double totalDouble = plusMethod(3.2, 3.5); //method overloading. same name, different types.
        System.out.println(totalInt);
        System.out.println(totalDouble);

        int recursiveSum = sum(10); // calls a + sum(a - 1) recursive method
        System.out.println(recursiveSum); //prints 55

        int recursiveSum2 = sum(5, 10);
        System.out.println(recursiveSum2); // prints 45

        // - Classes and Objects -

        JavaW3Notes myObj = new JavaW3Notes();
        myObj.attributeX = 25; // set the value of attributeX to 25
        System.out.println(myObj.attributeX);

        myObj.attributeX = 40; // overriding existing value.


        myMethod(); // static methods can be accessed without creating an object of the class, unlike public methods.

        JavaW3Notes newObj = new JavaW3Notes();
        newObj.myPublicMethod(); //public methods can only be accessed by objects unlike static methods.

        JavaW3Notes myCar = new JavaW3Notes(); // Create a myCar object
        myCar.fullThrottle(); // Call the fullThrottle() method
        myCar.speed(200); // Call the speed() method

        /*
        Example explained

1) We created a custom JavaW3Notes class with the class keyword.

2) We created the fullThrottle() and speed() methods in the JavaW3Notes class.

3) The fullThrottle() method and the speed() method will print out some text, when they are called.

4) The speed() method accepts an int parameter called maxSpeed - we will use this in 8).

5) In order to use the JavaW3Notes class and its methods, we need to create an object of the JavaW3Notes Class.

6) Then, go to the main() method, which you know by now is a built-in Java method that runs your program.

7) By using the new keyword we created an object with the name myCar.

8) Then, we call the fullThrottle() and speed() methods on the myCar object.
         */

        // - Encapsulation -

        JavaW3Notes encapObject = new JavaW3Notes();
        encapObject.setName("John"); // sets private pName value
        System.out.println(encapObject.getName());

        // Arrays

        int[][] matrix = new int[4][4];

        for (int i = 0; i < matrix.length; i++) {
            for (int j = 0; j < matrix[i].length; j++) {
                matrix[i][j] = i * matrix[i].length + j + 1;
            }
        }

        System.out.println(Arrays.deepToString(matrix));

        System.out.println("--------------------");

        for (int i = 0; i < matrix.length; i++) {
            for (int j = 0; j < matrix[i].length; j++) {
                System.out.print(matrix[i][j] + " ");
            }
            System.out.println();
        }
        System.out.println("--------------------");

        int[][] arr = new int[3][];
        arr[0] = new int[1];
        arr[1] = new int[2];
        arr[2] = new int[3];
        int sum = 0;
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < arr[i].length; j++) {
                arr[i][j] = j + 1;
            }
        }
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < i + 1; j++) {
                sum += arr[i][j];
            }
        }
        System.out.println(sum);

        // for each

        int[] list = {1,2,3,4,5,6};

        for (int i: list) {
            System.out.println(i);
        }

        System.out.println("--------------");

        int[][] matrix2 = new int[4][4];

        for (int i = 0; i < matrix2.length; i++) {
            for (int j = 0; j < matrix2[i].length; j++) {
                matrix2[i][j] = i * matrix2[i].length + j + 1;
            }
        }
        for (int[] row: matrix2) {
            for (int col: row) {
                System.out.print(col + " ");
            }
            System.out.println();
        }
        
    }

    // In the example below, we created a static method, which means that it can be accessed without
    // creating an object of the class, unlike public methods which can only be accessed by objects:

    static void myMethod()
    // static means that the method belongs to the Main class and not an object of the Main class.
    {
        System.out.println("Static methods can be accessed without creating an object of the class, unlike public");
    }

    public void myPublicMethod()
    {
        System.out.println("Public methods can only be accessed by objects.");
    }

    // - Method Parameters and Return -

    static String doubleVariableMethod(String fname, int age)
    {
        return fname + " is " + age;
    }

    // - Method Overloading -

    static int plusMethod(int a, int b)
    {
        return a + b;
    }

    static double plusMethod(double a, double b)
    {
        return a + b;
    }

    // - Recursion -

    static int sum(int a)
    {
        if (a > 0) //halting condition to prevent infinite recursion
        {
            return a + sum(a - 1);
        } else {
            return 0;
        }
    }

    static int sum(int a, int b)
    {
        if (b > a) //halting condition to prevent infinite recursion
        {
            return b + sum(a, b-1);
        } else {
            return b;
        }
    }

    public void fullThrottle()
    {
        System.out.println("The car is going as fast as it can!");
    }

    public void speed(int maxSpeed)
    {
        System.out.println("Max speed is: " + maxSpeed);
    }

    public String getName() //getter (see encapsulation above)
    {
        return this.pName;
    }

    public void setName(String newName) //setter (see encapsulation above)
    {
        this.pName = newName;
    }

}
