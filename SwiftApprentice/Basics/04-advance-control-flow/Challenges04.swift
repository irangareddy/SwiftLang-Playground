// Advanced Control Flow Challenges

// 1. 6 iterations
// 2. 10 times
// 3. 

// On the x/y plane
// x == y == z
// On the x/z plane
// Nothing special
// On the y/z plane

// 4. Range can not be empty

// 5.

let range = 0...10

for i in range {
    if let max = range.last {
        print(max - i)
    }
}

// 6.
for i in range {
    print(Double(i)/10)
}