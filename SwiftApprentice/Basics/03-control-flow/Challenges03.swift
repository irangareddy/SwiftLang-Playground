// 1
// Error; lastName is not in the scope

// 2
let a = true&&true
assert(a==true)
let b = false || false
assert(b==false)
let c = (true && (1 != 2)) || (4>3 && 100<1)
assert(c==true)
let d = ((10/2) > 3) && ((10%2)==0)
assert(d==true)

// 3: Snakes and Ladders

let maxRange = 20
var currentPosition = Int.random(in: 1...maxRange)
var nextPosition = Int.random(in: 1...6)
nextPosition+=currentPosition
print("Current Postion \(currentPosition) and Next Position \(nextPosition)")

if !(1 <= nextPosition && nextPosition <= 20) {
    print("No, not a valid position")
}
if nextPosition==3 {
    nextPosition = 15
    print("Hurray! You got a ladder to 15")
} else if nextPosition==7 {
    nextPosition = 12
    print("Hurray! You got a ladder to 15")
} else if nextPosition==11 {
    nextPosition = 2
    print("Oh No! You got bit by a Snake 2")
} else if nextPosition==17 {
    nextPosition = 9
    print("Oh No! You got bit by a Snake 9")
}

// 4

let month = "feb"
let year = 2023
var days = 0

var isLeapYear = {
    year.isMultiple(of: 4) || (year.isMultiple(of: 400)) && !(year.isMultiple(of: 100))
}

print("\(year) is \(isLeapYear() ? "" : "not") a leap year")

if month == "jan" || month == "mar" || month == "may" || month == "jul" || month == "aug" || month == "oct" || month == "dec" {
    days = 31
} else if month == "apr" || month == "jun" || month == "sep" || month == "nov" {
    days = 30
} else if month == "feb" {
    days = isLeapYear() ? 29 : 28
}

if days > 0 {
    print("In \(year), has \(days) days in \(month) month")
} else {
    print("Invalid Month!")
}

// 5
// TODO(later): Complete challenge 5

// 6
let depth = Int.random(in: 1...20)
var count = 1
var triangularNumber = 0

while count<=depth {
    triangularNumber += count
    count += 1
}

print("Triangular number with \(depth) depth is \(triangularNumber)")

// 7
// 0,1,1,2,3,5,8,13,21

count = 10
var current = 1
var previous = 1

var index = 2
while index < count {
    let next = current + previous
    previous = current
    current = next
    index+=1
    print(previous, current, index)
}

// 8
let randomNumber = Int.random(in: 1...100)
var x = 1

while x <= 12 {
    let value = x*randomNumber
    print("\(randomNumber) x \(x) = \(value)")
    x += 1
}

// 9

let diceRollMax = 6
var dice1 = 1
var dice2 = 1

var combinations = 0

while dice1 <= diceRollMax {
    while dice2 <= diceRollMax {
        let sum = dice1 + dice2
        if 2 <= sum && sum  <= 12 {
            print("Target \(sum): [\(dice1), \(dice2)]")
            combinations+=1
        }
        dice2+=1
    }
    dice1+=1
    dice2=1
}

print("Combinations \(combinations)")

// Second Method - To find combinations

var target = 2
dice1 = 1
dice2 = 1

while target <= 12 {
    combinations = 0
    while dice1 <= diceRollMax {

        while dice2 <= diceRollMax {
            if dice1+dice2 == target {
                combinations+=1
            }
            dice2+=1
        }
        dice1+=1
        dice2=1
    }
    dice1=1
    print("\(target): \t\(combinations)")
    target+=1
}
