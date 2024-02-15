/// Challenges

// 1
let coordinates = (2, 3)

// 2
let namedCoordinate = (row: 2, column: 3)

// 3
// let character: Character = "Dog" -> Wrong
// let character: Character = "̧̣🐶" -> emoji is of String type but not character
let string: String = "Dog"
// let string: String = "̧🐶" -> can not assign to a constant

// 4: Does it compile? Answer: No
let tuple = (day: 15, month: 8, year: 2739)
// let day = tuple.Day

// 5: name is a constant, which is unmutable

// 6: value will be type of Double

// 7

let month = tuple.month // 8
assert(month==8)

// 8
let number = 8
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number*multiplier)"
// assert(summary=="a")

// 9 
let a = 4
let b: Int32 = 100
let c: UInt8 = 12

var sum = a + Int(b) + Int(c)
print(sum)

// 10
print(Double.pi)
print(Float.pi)

let difference = Double.pi - Double(Float.pi)
print(difference)
