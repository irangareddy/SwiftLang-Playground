/// Strings

/// Strings are a collections of individual characters
/// Mapping from character to number is called a character-set
/// Unicode is standard for character set mapping

let characterA: Character = "a"
let characterDog: Character = "🐶"
let stringDog = "Dog"

// Concatenation

var message = "Hello, " + "I am "
let name = "Ranga"
message += name

print(message)

let exclamationMark: Character = "!"
message += String(exclamationMark)

print(message)

// Interpolation

message = "Hey there, this is \(name) for you!"

print(message)

let oneThird =  1.0/3.0
let oneThirdLongString = "One third is \(oneThird) as a decimal"

print(oneThirdLongString)

let bigString = """
This is big string
than you think,
actually I am writing the third line!
That's so cool
"""

print(bigString)
