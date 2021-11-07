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
