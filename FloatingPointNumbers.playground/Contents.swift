// FloatingPointNumbers

let pi = 3.14159
let  a = -89.89

//Double represents a 64-bit floating-point number (15 decimal digits).

//Float represents a 32-bit floating-point number (6 decimal digits).



// Type Safety and Type Infernce

print(type(of: pi))  // we are specified "pi" is Double --> Type Infernce

let anotherPi = 3 + pi

print(type(of: anotherPi))


// Numeric Literals

//A decimal number, with no prefix

let decimalInteger = 22

//A binary number, with a 0b prefix

let binaryInteger = 0b10110

//An octal number, with a 0o prefix

let octalInteger = 0o2356

//A hexadecimal number, with a 0x prefix

let hexadecimalInteger = 0x1AE

print("decimalInteger: \(decimalInteger)")
print("binaryInteger: \(binaryInteger)")
print("octalInteger: \(octalInteger)")
print("hexadecimalInteger: \(hexadecimalInteger)")

// Exponent Values for Decimal Floats

let exponentDouble = 0.07e2
let hexadecimalExpDouble = 0xC.3p0

print("exponentDouble: \(exponentDouble)")
print("hexadecimalExpDouble: \(hexadecimalExpDouble)")

// Use _ for readability or padding 0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

print(paddedDouble)
print(oneMillion)
print(justOverOneMillion)
