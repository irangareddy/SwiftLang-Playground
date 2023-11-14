// Constants and Variables

let maxiumNoOfLoginAttempts = 10  // never Changes
var currentLoginAttempt = 0         // always changes

// Declaring Multiple Variales in single line
// Suggestion: For Clean Coding its not recommended

let a = false, b = 6.67889, c = "Hai"
var x = 1, y = true, z = 89.89

// Type Annotations
// Declaring : means "of-type"

var myName: String
var myPin: Int

myName = "Ranga Reddy"
myPin = 7667

// Declaring multiple values of same type

var radius, size, length: Double

// “Naming Constants and Variables”

let  😄 = "smilely"

// Naming a variable or constant as same as reserved keyword

let `let` = 1918

// Updating the value

let welcomeMessage = "Hello"
// welcomeMessage = "Hey man!!!" ---> error since ,its declared "let"

var position = "jr iOS Dev"
position = "Sr iOS Dev"

// “Printing Constants and Variables”

print(welcomeMessage, separator: "", terminator: "")
print(position)

// String Interpolation

print("\(welcomeMessage), I am a \(position)")

// Comments : Oh C'mon still know we are using

// Single line
/* Multi Line */
/* Multi line Start /* Nested multi line */ Multi line end */

// Semicolons

let hai = "hai";print("\(hai) says hai")
