"""
https://projecteuler.net/problem=10

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
"""

def is_prime(n):
    if n<2:
        return False
    for i in range(2,n):
        if n%i == 0:
            return False
    return True

def totalPrime(x):
    n=3
    total = 2
    while n < x:
        if is_prime(n):
            total += n
            n += 2
        else:
            n += 2
    return(total)

print(f"The sum of the primes below 10 is {totalPrime(10)}")

print(f"And the sum of the primes below 2000000 is {totalPrime(2000000)}") #this calculation takes a while.

