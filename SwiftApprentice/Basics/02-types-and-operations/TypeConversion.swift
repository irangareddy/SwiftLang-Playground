/// Type Conversion

var integer: Int = 01
var decimal: Double = 21.32

// warning: cannot assign value of type 'Double' to type 'Int'
// integer = decimal
// Implicit conversions are not allowed, use only explicit conversions

integer = Int(decimal)
print(integer)

// Operators with mixed types

let hourlyRate: Double = 19.5
let hoursWorked: Int = 10
// let totalCost: Double = hourlyRate * hoursWorked

// In Swift, you can't apply the arthmetic operators to mixed types

let totalCost: Double = hourlyRate * Double(hoursWorked)
print(totalCost)
