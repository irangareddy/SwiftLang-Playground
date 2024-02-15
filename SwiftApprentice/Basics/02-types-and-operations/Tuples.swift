/// Tuples

// A tuple is a type that represents data composed 
// of more than one value of any type

let coordinates: (Int, Int) = (2, 3)
print(coordinates)

let coordinatesMixed: (Int, Double) = (2, 3)
print(coordinatesMixed)

print(coordinates.0, coordinates.1)

// you can name the coordinates

let coordinatesNamed = (x: 2, y: 3)
print(coordinatesNamed.x, coordinatesNamed.y)

// Access multiple parts of the tuple at the same time.

let coordinates3D = (x: 0, y: 1.0, z: 2)
let (x, y, z) = coordinates3D
// brackets are important, otherwise raises issue of missing patterns
print(x, y, z)

let (a, _, c) = coordinates3D

print(a, c)

// _ => underscore or wildcard operator
