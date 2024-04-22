/// For loops

import Foundation

let count = 10
var sum = 0

for i in 1...count {
    sum += i
}

let mathSolution: Int = count * (count+1) / 2

assert(sum == mathSolution, "Sum of n numbers")

// Use underscore whenever index is not required
for _ in 0..<count {
    print("I love to spend writing code!")
}

// conditional for loop

sum = 0
for i in 1...count where i%2 == 1 {
    sum += i
}

print(sum)

// Continue Statement

sum = 0
for row in 0...7 {
    if row % 2 == 0 {
        continue
    }
    for column in 0...7 {
        sum += row * column
    }
}

print(sum)

sum = 0
for row in 0...7 {

    for column in 0...7 {
        if column >= row {
        continue
    }
        sum += row * column
    }
}

print(sum)

// Labelled Statement

sum = 0

rowLoop: for row in 0...7 {
    for column in 0...7 {
        if row == column {
            continue rowLoop
        }
        sum += row * column
    }
}

print(sum)

/// Mini Exercises

// 1
let range = 1...10

for i in range {
    print(i*i)
}

// 2
for i in range {
    print(sqrt(Double(i)))
}

// 3
sum = 0
for row in 0...7 where row % 2 == 1 {
    for column in 0...7 {
        sum += row * column
    }
}

print(sum)
