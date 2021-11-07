// codecademy conditionals module

var episode = 3

var villain: String 

// 🦹

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

// Switch Statement: where Clause

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
