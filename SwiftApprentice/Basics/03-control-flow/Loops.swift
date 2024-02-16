/// Loops

/// While

var sum = 1

while sum < 1000 {
    sum += (sum+1)
    print(sum)
}

/// Repeat While Loops

sum = 1

repeat {
    sum += (sum+1)
    print(sum)
} while sum < 1000

/// Note: while is not same as repeat while

/// Breaking out while loop

sum = 1

while true {
    sum += (sum+1)
    if sum <= 1000 {
        break
    }
    print(sum)
}
