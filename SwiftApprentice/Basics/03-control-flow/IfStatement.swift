let animal = "Fox"

if animal == "cat" || animal == "Dog" {
    print("Animal is a house pet")
} else {
    print("Animal is not a house pet")
}

/// Encapsulating Variables

var hoursWorked = 45
var price = 0

if hoursWorked > 40 {
    let hoursOver40 = hoursWorked - 40
    price += hoursOver40 * 50
    hoursWorked -= hoursOver40
}

price += hoursWorked*25

print(price)

/// Ternary Operator

let a = 5
let b = 10

let min = a < b ? a : b
let max = a > b ? a : b
