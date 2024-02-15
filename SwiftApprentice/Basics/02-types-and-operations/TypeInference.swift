// Type Inference

let typeInferredInt = 32
print(type(of: typeInferredInt))

let typeInferredDouble = 3.2
print(type(of: typeInferredDouble))

// Some Example

let wantADouble=3
let actuallyDouble=3.0
let speciedDouble: Double = 3
let convertedDouble = 3 as Double
let simpleDouble = 3.0

// Note: Since 3 is literal number, type is only inferred on initialisation
