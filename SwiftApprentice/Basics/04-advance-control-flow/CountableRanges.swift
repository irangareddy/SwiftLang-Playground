/// Countable Ranges

// Closed Range

let closedRange = 0...5

for i in closedRange {
    print(i)
}

// Half Open Range

let halfOpenRange = 0..<5

for i in halfOpenRange {
    print(i)
}

// A random interlude

while Int.random(in: 0...6) != 6 {
    print("Not a six")
}
