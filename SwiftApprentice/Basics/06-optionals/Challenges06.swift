/// Challenges

// 1 - second statement is invalid

// 2, 3
func divide(_ value: Int, by divisor: Int) -> Int? {
    guard divisor != 0 else { // Check if divisor is not zero to avoid division by zero
        return nil
    }
    return value % divisor
}

let remainder = divide(100, by: 10)
if let remainder = remainder {
    print("Yep \(100 / remainder)")
} else {
    print("Nah")
}

// Output: Yep 25

let number: Int??? = 10
print(number!!!)

if let anumber = number, let bnumber = anumber, let cnumber = bnumber {
    print("Nested number \(cnumber as Any)")
} else {
    print("Number is nil or contains nested nils.")
}

// Output: Nested number 10

func printNumber(_ number: Int???) {
    guard let number = number else {
        print("Number is nil")
        return
    }
    if let unwrappedNumber = number {
        print("Unwrapped number: \(unwrappedNumber!)")
    } else {
        print("Number contains nested nils")
    }
}

printNumber(number)

// Output: Unwrapped number: Optional(Optional(10))
