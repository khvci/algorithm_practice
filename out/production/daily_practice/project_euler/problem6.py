"""
The sum of the squares of the first ten natural numbers is, 1^2 + 2^2 +...+ 10^2 = 385

The square of the sum of the first ten natural numbers is, (1 + 2 +...+ 10)^2 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
"""
def calculate(n):
    square_num = 0
    i = 1
    for x in range(n):
        i_square = i**2
        square_num += (i_square)
        i += 1
    
    nums_total = 0
    j = 1
    for y in range(n):
        nums_total += j
        j += 1

    square_total = nums_total ** 2
    difference = square_total - square_num
    print(f"Difference between the sum of the squares of the first {n} natural numbers and the square of the sum is: {difference}")

calculate(10) #just to check the function, result should be 2640
calculate(100) #the answer to the question
