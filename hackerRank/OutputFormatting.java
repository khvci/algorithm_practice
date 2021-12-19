/*
Input Format

Every line of input will contain a String followed by an integer.
Each String will have a maximum of 10 alphabetic characters, and each integer will be in the inclusive range from 0 to 999.

Output Format

In each line of output there should be two columns: The first column contains the String and is left justified using exactly 
15 characters. The second column contains the integer, expressed in exactly 3 digits; if the original input has less than three 
digits, you must pad your output's leading digits with zeroes.

Sample Input

java 100
cpp 65
python 50

Sample Output

================================
java           100 
cpp            065 
python         050 
================================

Explanation

Each String is left-justified with trailing whitespace through the first 15 characters. The leading digit of the integer is the 
16th character, and each integer that was less than 3 digits now has leading zeroes.
*/

import java.io.*;
import java.util.*;

public class OutputFormatting {

    public static void main(String[] args) {
        
        Scanner input = new Scanner(System.in);
        
        String borders = "================================";
        String space1="",space2="",space3="";
        
        String lang1,lang2,lang3,grade1,grade2,grade3;
        
        lang1 = input.next();
        for (int i = lang1.length(); i < 15; i++) {
            space1 = " " + space1;
        }
        lang1 += space1;
        
        grade1 = input.next();
        if (grade1.length() == 2) {
            grade1 = "0" + grade1;
        } else if (grade1.length() == 1) {
            grade1 = "00" + grade1;
        }
        
        lang2 = input.next();
        for (int i = lang2.length(); i < 15; i++) {
            space2 = " " + space2;
        }
        lang2 += space2;
        
        grade2 = input.next();
        if (grade2.length() == 2) {
            grade2 = "0" + grade2;
        } else if (grade2.length() == 1) {
            grade2 = "00" + grade2;
        }
        
        lang3 = input.next();
        for (int i = lang3.length(); i < 15; i++) {
            space3 = " " + space3;
        }
        lang3 += space3;
        
        grade3 = input.next();
        if (grade3.length() == 2) {
            grade3 = "0" + grade3;
        } else if (grade3.length() == 1) {
            grade3 = "00" + grade3;
        }
        
        System.out.println(borders);
        
        System.out.print(lang1);
        System.out.println(grade1);
        
        System.out.print(lang2);
        System.out.println(grade2);
        
        System.out.print(lang3);
        System.out.println(grade3);
        
        System.out.println(borders);
    }
}
