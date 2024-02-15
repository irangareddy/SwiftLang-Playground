/// Type Conversion and Inference Exercises
// 1
var age1 = 42 as Double
var age2 = 21 as Double

// 2
let avg1 = age1 + age2 / 2
print(type(of: avg1))

// 3
// covert age1, and age2 to Double
print(type(of: age1))

/// String Exercises

// 1

let firstName: String = "Ranga"
let lastName: String = "Reddy"

// 2

let fullName = "\(firstName) \(lastName)"
let concatenatedFullName = firstName + " " + lastName
assert(fullName==concatenatedFullName)

// 3
let myDetails = "Hey, this is \(fullName)"
print(myDetails)

// Tuple

// 1
var data = (05, 01, 2024, 26.4)

// 2
var (month, day, year, averageTemperature) =  data

// 3
var (_, onDay, _, temperatureRegistered) = data

data.3 = 52

print(data)
print(averageTemperature)
averageTemperature += 23
print(averageTemperature)
