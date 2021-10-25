"""
https://projecteuler.net/problem=3

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
"""

factors = []
i = 600851475143
j = 2

while i > 1:
	if i % j == 0:
		if j not in factors:
			factors.append(j)
		i /= j
	else:
		j += 1

print("Prime factors are :", end = " ")
print(factors)

print("Tha largest prime factor is:", end = " ")
print(factors[-1])