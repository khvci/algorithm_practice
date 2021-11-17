/*

If we list all the numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

*/

func multiples(_ x: Int) -> Int
{
	var total = 0
	for i in 1..<x
	{
		if i % 3 == 0 || i % 5 == 0
		{
			total += i
		}
	}
	return total
}

print("Sum of multiples of 3 or 5 under 10 is: \(multiples(10))")

print("Sum of multiples of 3 or 5 under 1000 is: \(multiples(1000))")
