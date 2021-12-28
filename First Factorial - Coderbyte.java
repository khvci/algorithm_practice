/*
First Factorial
Have the function FirstFactorial(num) take the num parameter being passed and 
return the factorial of it. For example: if num = 4, then your program should 
return (4 * 3 * 2 * 1) = 24. For the test cases, the range will be between 1 
and 18 and the input will always be an integer. 
*/

import java.util.*; 
import java.io.*;

class Main {

  public static int FirstFactorial(int num) {
    int result = 1;
    int i = num;
    while (i > 1) {
      result *= i;
      i--;
    }
    
    return result;
  }

  public static void main (String[] args) {  
    // keep this function call here     
    Scanner s = new Scanner(System.in);
    System.out.print(FirstFactorial(s.nextInt()));
  }

}

// Success 10/10 cases
