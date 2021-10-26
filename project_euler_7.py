"""
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
"""

def is_prime(n):
    if n<2:
        return False
    for i in range(2,n):
        if n%i == 0:
            return False
    return True
    
def prime(j):
    prime_numbers = []
    i=2
    while len(prime_numbers) < j:
        
        if is_prime(i):
            prime_numbers.append(i)
            i += 1
        else:
            i += 1
    result = prime_numbers[-1]
    print(f"{j}th prime number is: {result}")

prime(6) #to test the function, this should be 13
prime(10001) #answer to the question
prime(int(input("Ask me another prime number: "))) #calculate with user input