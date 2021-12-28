/*

MATH CHALLENGE

Have the function MathChallenge(num), take the num parameter being passed which will be an integer 
and return the string true if it's a power of two. If it's not, return the string false.

*/

func MathChallenge(_ num: Int) -> Bool {
  var isTrue: Bool = false
  var testNumber = Double(num)
  
  while testNumber > 1 {
    testNumber /= 2
  }
  
  if testNumber == 1 {
    isTrue = true
  }
  
  return isTrue
}

/*

STRING CHALLNGE

Have the function StringChallenge(num), take the num parameter being passed and return the number of
hours and minutes. Separate the number of hours and minutes with a colon.

*/

func StringChallenge(_ num: Int) -> String {
  let minutes = num % 60
  let hours = (num - minutes) / 60
  let output = "\(hours):\(minutes)"
  return output
}
