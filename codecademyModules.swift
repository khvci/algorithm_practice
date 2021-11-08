// codecademy conditionals module

var episode = 3

var villain: String 

// switch cases

switch episode {
  case 1...3:
  villain = "Emperor Palpatine"
  case 4...6:
  villain = "Darth Vader"
  case 7...9:
  villain = "Kylo Ren"
  default:
  villain = ""
}
print(villain)

// switch statement: where clause

var wholeNumber = Int.random(in: 1...10000000)



switch wholeNumber {
  case let x where x % 2 == 0:
  print("\(wholeNumber) is Composite")
  case let x where x % 3 == 0:
  print("\(wholeNumber) is Composite")
  default:
  print("\(wholeNumber) is Prime")
}

// Ternary Conditional Operator

var windy = true 

if windy {
  print("Sails up")
} else {
  print("Motor on")
}

// ternary version ⛵

windy ? print("Sails up") : print("Motor on")

// logical AND operator

var midnight = true 
var date = "January 1, 2020"

if midnight && date == "January 1, 2020" {
  print("It's the start of a new decade!")
}

// logical OR operator

var carInMotion = false
var insideACar = true

if carInMotion || insideACar {print("Safety first! Buckle up.")}

// combining logical operators

var correctPassword = false
var lessThanThreeTries = true 
var accessThroughTouchID = true
var unlock: Bool

if correctPassword && lessThanThreeTries || accessThroughTouchID {
  unlock = true
} else {
  unlock = false
}
print(unlock)

// order of execution

let bool1 = (true || false) || false || false 

let bool2 = !true || (false && false || true)

let bool3 = !(false && true) && (false || false)


print(bool1) // should be true
print(bool2) // should be true
print(bool3) // should be false

// prime number checker with for and while loops

var n: Int = -15454
if n < 2 {
  print("you can't test under 2, it's the smallest prime'")
  n += (2 - n)
}
while n <= 100 {
  var isPrime = true
  for i in stride(from:2, to: n - 1, by: 1) {
    if n % i == 0 {
      isPrime = false
    }
  }
  isPrime ? print("\(n) is prime.") : print("\(n) is not prime.")
  n += 1
}

// .append() method

var resolutions = ["play more music 🎸",
                   "read more books 📚",
                   "drink more water 💧"]

print(resolutions)
resolutions.append("something")
print(resolutions)
resolutions += ["other thing", "and another one"]
print(resolutions)

// .insert() and .remove() Methods

var dna = ["ATG", "ACG", "GAA", "TAT"]

dna.insert("GTG", at: 3)
dna.remove(at: 0)
print(dna)

// write a swift program to find the sum of even numbers and the product of odd numbers in an array.

var list = [2, 4, 3, 6, 1, 9]


var sum = 0
var prod = 1

for x in list {
  if x % 2 == 0 {
    sum += x
  } else {
    prod *= x
  }
}

print("Sum of even numbers is \(sum)")
print("Product of odd numbers is \(prod)")
