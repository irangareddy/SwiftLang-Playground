// some challenges to test knowledge of variables and constants
import Foundation

/// Challenge 1: Variables
let myAge = 23
var dogs = 0
dogs+=1 // since I bought new puppy

/// Challenge 2: Make it Compile
var age: Int = 16
print(age)
age = 30
print(age)

/// Challenge 3: Compute the answer
/// Consider the following code:
let x: Int = 46
let y: Int = 10
/// Work out what answer equals when you add the following lines of code:
// 1
let answer1: Int = (x * 100) + y // 4610
// 2
let answer2: Int = (x * 100) + (y * 100)  // 5600
// 3
let answer3: Int = (x * 100) + (y / 10) // 4601

print(answer1, answer2, answer3)

// Challenge 4: Add parentheses

let challenge4A = 8 - 4 * 2 + 6 / 3 * 4
let challenge4B = (8 - (4 * 2)) + ((6 / 3) * 4)
assert(challenge4A == challenge4B) // assert make sures both are same

// Challenge 5: Average rating

let rating1: Double = 2.4; let rating2: Double = 3.2; let rating3: Double = 4.7
let averageRating = (rating1+rating2+rating3)/3
print(averageRating)

// Challenge 6: Electrical power
let voltage: Double = 43.83
let current: Double = 21.32
let power = voltage*current
print("Power", power)

// Challenge 7: Electrical resistance
let resistance = power/(current * current)
print("Resistance", resistance)

// Challenge 8: Random Integer
let randomNumber = arc4random()
let diceRoll = (randomNumber%6)+1
print(diceRoll)

// Challenge 9: Quadratic equations
let a: Double = 3
let b: Double = 2
let c: Double = 1
let root1: Double = (-b + (b*b - 4*a*c).squareRoot()) / (2*a)
let root2: Double = (-b - (b*b - 4*a*c).squareRoot()) / (2*a)
print(root1, root2)
