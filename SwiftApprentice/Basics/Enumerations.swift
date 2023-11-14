// Case 1

enum CompassPoint {
    case north
    case south
    case east
    case west
}

var directionToHead: CompassPoint

// Matching Enumeration Values with a Switch Statement

directionToHead = .south
switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}

// Case 2

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let somePlanet = Planet.mars
switch somePlanet {
case .mars:
    print("Elon Musk Home")
default:
    print("Not a safe place for humans")
}
// Prints "Mostly harmless"

// Iterating over Enumeration Cases

enum Tea: CaseIterable {
    case iceTea, lemonTea, iraniTea, plainTea
}
let numberOfChoices = Tea.allCases.count
print("\(numberOfChoices) types of Tea available")
// Prints "4 types of Tea available available"

for tea in Tea.allCases {
    print(tea)
}

// Associated Values

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}

productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
case let .qrCode(productCode):
    print("QR code: \(productCode).")
}
// Prints "QR code: ABCDEFGHIJKLMNOP."

// Raw Values

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

let asciiTab = ASCIIControlCharacter.tab.rawValue
print(asciiTab)

// Implicitly Assigned Raw Values

enum Students: Int {
    case Ranga = 1, Naveen, Chary, Sumanth, Praveen, Vineel, Raj
}

let sumanthRollNo = Students.Sumanth.rawValue
print(sumanthRollNo)

// When strings are used for raw values, the implicit value for each case is the text of that case’s name.

enum Names: String {
    case Ranga, Naveen, Chary, Sumanth, Praveen, Vineel, Raj
}

let vineelName = Names.Vineel.rawValue
print(vineelName)

// Initializing from a Raw Value

let getStudent = Students(rawValue: 9)
print(getStudent)  // get nil here

// Recursive Enumerations
// Target expession (9*6)+6

enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

/*
 
 indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
 
}
*/

let first = ArithmeticExpression.number(9)
let second = ArithmeticExpression.number(6)
let sum = ArithmeticExpression.addition(first, second)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(6))

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(product))
