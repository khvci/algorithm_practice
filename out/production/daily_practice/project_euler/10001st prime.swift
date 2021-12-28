/*
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that 
the 6th prime is 13. What is the 10 001st prime number?
*/

func kthPrimeNumber(_ number: Int) -> Int {
	func prime(_ x: Int) -> Bool {
	for i in 2..<x {
		if x % i == 0 {return false}
	}
	return true

	}
	var count = 1
	var result = 2
	var check = 3
	if number < 1 {
		return -1
		} else if number == 1 {
			return 2
			} else {

				while count < number {
		
						if prime(check) {
							result = check
							count += 1
							check += 2
						} else {check += 2}
				}
			}
return result
}


print(kthPrimeNumber(6)) //should print 13
print(kthPrimeNumber(10_001)) //should print 104743
