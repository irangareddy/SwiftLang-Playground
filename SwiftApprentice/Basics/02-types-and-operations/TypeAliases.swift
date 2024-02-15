/// Type Aliases
/// Create a custom data type from primitive datatypes

typealias Animal = String

// usage
let myPet: Animal = "Dog"

typealias Coordinates =  (Int, Int)
let xy: Coordinates = (2, 4)
print(xy.0, xy.1)
