func sqRoot(_ x: Float) -> Float {
	let precision: Float = 1.0000001
	let xUp = x * precision
	let xDown = x / precision
	var result = x / 2 //first guess to test
	

	while (result * result) < xDown || (result * result) > xUp {
		result = (result + (x / result)) / 2 //adjust the first guess
	}
	return result
}

print(sqRoot(100_000_000)) //prints 10_000.0

print(sqRoot(6561)) //prints 81.0
