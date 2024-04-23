// Challenges

import Foundation

// 1: Looping with stride functions

for index in stride(from: 10, to: 22, by: 4) {
  print(index)
}
// prints 10, 14, 18

for index in stride(from: 10, through: 22, by: 4) {
  print(index)
}
// prints 10, 14, 18, and 22


// What is the difference between the two stride function overloads?
// to - does not include the end value
// through - inclusive of the min and max range i.e, including end value


// Write a loop that goes from 10.0 to (and including) 9.0, decrementing by 0.1.
for index in stride(from: 10.0, through: 9.0, by: -0.1) {
  print(index)
}

// 2

func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    return number % divisor == 0
}

assert(isNumberDivisible(25, by: 5), "Divisable")
assert(!isNumberDivisible(25, by: 2), "Not Divisable")

func isPrime(_ number: Int) -> Bool {
    for i in 1...Int(sqrt(Double(number))) {
        if i ==  1 {
            continue
        }
        if (isNumberDivisible(number, by: i)) {
            return false
        }
    }
    return true
}

// Optimal isPrime Solution
func isOPrime(_ number: Int) -> Bool {
    guard number > 1 else {
        return false
    }

    if number == 2 || number == 3 {
        return true
    }
    
    if number % 2 == 0 || number % 3 == 0 {
        return false
    }
    
    var i = 5
    while i * i <= number {
        if number % i == 0 || number % (i + 2) == 0 {
            return false
        }
        i += 6
    }
    
    return true
}


print(isOPrime(100))
print(isOPrime(2))
print(isOPrime(5))
print(isOPrime(3))
print(isOPrime(17))
print(isOPrime(171))

// 3

func fibonacci(_ number: Int) -> Int {
    if number <= 0 {
        return 0
    }
    if number == 1 {
        return 1
    }
    return fibonacci(number - 1) + fibonacci(number - 2)
}

print(fibonacci(1)) 
print(fibonacci(2)) 
print(fibonacci(3)) 
print(fibonacci(4)) 
print(fibonacci(5)) 
print(fibonacci(10))