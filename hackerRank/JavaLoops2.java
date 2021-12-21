/*
https://www.hackerrank.com/challenges/java-loops/problem?isFullScreen=true
*/

import java.io.*;
import java.util.*;

public class JavaLoops2 {

    public static void main(String[] args) {
        
        Scanner input = new Scanner(System.in);
        
        int limit, num1, num2, num3;
        limit = input.nextInt();
        
        for (int i = 0; i < limit; i++) {
            num1 = input.nextInt();
            num2 = input.nextInt();
            num3 = input.nextInt();
            
            for (int j = 0; j < num3; j++) {
                num1 = num1 + (int)Math.pow(2,j) * num2;
              
                System.out.print(num1 + " ");
            }
            
        System.out.println("");
        }  
    }
}
