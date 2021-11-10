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

// checking for elements in sets

var coffeeFlavors: Set = ["Caramel", "Mocha", "Pumpkin Spice", "Vanilla", "Blueberry"]

if coffeeFlavors.contains("Blueberry") {
  print("One blueberry coffee coming right up.")
} else {
  print("We do not serve that coffee flavor here.")
}

// iterating through a set

var thingsToPack: Set = ["Bathing Suit", "Clothes", "Sunglasses", "Sunscreen", "Favorite Book", "Phone Charger"]

var suitcase = Set<String>()

for item in thingsToPack {
  suitcase.insert(item)
}
print(suitcase)

// set operations: .intersection()

var swim: Set = ["Turtles", "Ducks", "Puffins", "Shark"]

var fly: Set = ["Humming birds", "Bats", "Ducks", "Puffins"]

var swimAndFly = swim.intersection(fly)
print(swimAndFly)

// set operations: .union()

var consonants: Set = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]

var vowels: Set = ["A", "E", "I", "O", "U"]

var alphabet = consonants.union(vowels)
print(alphabet)

// set operations: .symmetricDifference()

var oscarWinners: Set = ["Heath Ledger", "Rita Moreno", "Audrey Hepburn", "John Legend"]
var emmyWinners: Set = ["Peter Dinklage", "John Legend", "Audrey Hepburn", "Rita Moreno"]

var difference = oscarWinners.symmetricDifference(emmyWinners)
print(difference)

// set operations: .subtracting()

var foodEmojis: Set = ["🥕", "🍇", "🌶️", "🍒", "🍎", "🥦"]
var fruitEmojis: Set = ["🍇", "🍎", "🍒"]

var veggieEmojis = foodEmojis.subtracting(fruitEmojis)
print(veggieEmojis)

// Creating an Empty Dictionary

var emptyLiteral: [String: Int] = [:]
var emptyInitializer = [String: Bool]()

// Creating a Dictionary Literal

var roleModels: [String: String] = [
  "Mr. Rogers": "Fred McFeely Rogers",
  "The Crocodile Hunter": "Stephen Robert Irwin",
  "Bill Nye the Science Guy": "William Sanford Nye"
]
print(roleModels)

// Type Inference

var movieYears = [
  "Finding Nemo": 2003,
  "Toy Story": 1995
]
print(movieYears)

// Adding Elements

var teaSteepingTemperature = [
  "Black": 212,
  "Oolong": 185,
  "White": 185,
]
teaSteepingTemperature["Green"] = 185
teaSteepingTemperature["Rooibos"] = 212
print(teaSteepingTemperature)

// updating elements

var abbreviations = [
  "LOL": "Laboring Over Latkes",
  "LMK": "Let Me Know",
  "BRB": "Bringing Radishes Back",
  "GJOYC": "Great Job On Your Code"
]

// Add your code below 🆘

abbreviations["LOL"] = "Laugh Out Loud"

abbreviations.updateValue("Be Right Back", forKey: "BRB")

print(abbreviations)

// Removing Elements

ar rainbowHex = [
  "red": "#ff0000",
  "pink": "#ffc0cb",
  "yellow": "#ffff00",
  "maroon": "#800000",
  "green":  "#00ff00",
  "blue": "#0000ff",
  "violet": "#ee82ee"
]

// Write your code below 🌈

rainbowHex["maroon"] = nil

rainbowHex.removeValue(forKey: "pink")

rainbowHex.removeAll()

print(rainbowHex)

// Inspecting a Dictionary

var numberOfSides = [
  "triangle": 3,
  "square": 4,
  "rectangle": 4,
  "decagon": 10,
  "triacontagon": 30
]

if numberOfSides.isEmpty {
  print("This dictionary has no elements in it.")
} else {
  print(numberOfSides.count)
}

// Accessing Values

var flowerNames = [
  "Lily": "Lilium",                
  "Sunflower": "Helianthus", 
  "Orchid": "Orchidaceae", 
  "Daffodil": "Narcissus"
]

var sunflowerScientific = flowerNames["Sunflower"]!

print(sunflowerScientific)

if let lilyScientific = flowerNames["Lily"] {
  print("A lily is referred to as a \(lilyScientific) in the science community.")
}

// Iterating through a Dictionary

var mythology = [
  "Zeus": "Jupiter",
  "Athena": "Minerva", 
  "Poseidon": "Neptune",
  "Demeter": "Ceres"]

// Write your code below 🏛️ 
for  (greekName, romanName) in mythology {
  print("\(greekName) is also known as \(romanName)")
}

// Using .keys and .values

var lemonadeStand = [
  "April": 8.50,
  "May": 12.75,
  "June": 22.50,
  "July": 38.25, 
  "August": 32.50,
  "September": 11.50
]

var total: Double = 0.0

// Add your code below 🍋
for monthlyProfit in lemonadeStand.values {
  total += monthlyProfit
}
print("Total profits are \(total)")

// Defining a Function w/Void -> does not return any value.

func directionsToTimesSq() -> Void {
  print("Walk 4 mins to 34th St Herald Square train station.")
  print("Take the Northbound N, Q, R, or W train 1 stop.")
  print("Get off the Times Square 42nd Street stop.")
  print("Take lots of pictures! 📸")
}

// Multiple Parameters 

func timeToDestination(distance: Int, speed: Int) -> Int {
  let time = distance / speed
  return time
}
print(timeToDestination(distance: 6836, speed: 560))

// Argument Labels

var friendsList = [String]()

func addFriend(named friendName: String) {
  friendsList.append(friendName)
}

addFriend(named: "Alice")
addFriend(named: "Bob")
addFriend(named: "Cindy")

print(friendsList)

// Omitting Argument Labels

let adults = 2
let students = 15 

func museumEntry(_ numAdults: Int, _ numStudents: Int) -> Int {
  let studentTicket = 14
  let adultTicket = 25
  let total = (studentTicket * numStudents) + (adultTicket * numAdults)
  return total
}

print(museumEntry(adults, students))
