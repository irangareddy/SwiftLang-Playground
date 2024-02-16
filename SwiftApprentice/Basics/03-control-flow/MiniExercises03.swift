/// Boolean

// 1
let myAge = 23
let isTeenager = (13 <= myAge && myAge <= 19)
assert(isTeenager==false)

// 2
let theirAge = 23
let theirTeenager = (13 <= theirAge && theirAge <= 19)

let bothTeenagers = theirTeenager && isTeenager
assert(bothTeenagers==false)

// 3
let reader = "Ranga Reddy"
let author = "Matt Galloway"

let authorIsReader = reader==author
assert(authorIsReader==false)

// 4
let readerBeforeAuthor = reader < author
assert(readerBeforeAuthor==false)

// 5
if isTeenager {
    print("Teenager")
} else {
    print("Not Teenager")
}

// 6
let answer = isTeenager ? "Teenager" : "Not Teenager"

/// Loops

// 1
var counter = 0
while counter < 10 {
    print("Counter is \(counter)")
    counter+=1
}

// 2
counter = 0
var roll = 0

repeat {
    roll = Int.random(in: 0...5)
    counter+=1
    print("After \(counter) rolls, roll is \(roll)" )
} while roll == 0
