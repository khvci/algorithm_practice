"""
https://projecteuler.net/problem=5

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
"""
i = 200000000 #optimized for faster processing after first test

while i%19!=0 or i%18!=0 or i%17!=0 or i%16!=0 or i%15!=0 or i%14!=0 or i%13!=0 or i%11!=0: #removed unnecessary tests. for example, if a number divisible by 15 and 16, its also divisible by 2, 3, 4, 5, 8, 10, 12, 20, etc.
    i += 1
print("The smallest positive number that is evenly divisible by all of the numbers from 1 to 20 is:", end=" ")
print(i)
