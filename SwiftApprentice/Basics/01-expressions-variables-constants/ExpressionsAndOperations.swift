/// ExpressionsAndOperations.swift

import Foundation

/// Note: What are operators
/// specific symbol used to do a operation. 
/// (An operation is a task of turning two or more pieces of data into another piece of data)

/// Each of the below line is a expression, which does mean each has a value
/// These are some expressions expressions using arthmetic operations
2+6
10-2
2*4
24/3

// MARK: - Shift Operations

print(1 << 3) // 8
print(32 >> 2) // 8

/// Note:
/// Shifting left by 1 means multiplying by 2 & Shifting left by 2 means multiplying by 2^2
/// Shifting right by 1 means dividing by 2 & Shifting right by 2 means dividing by 2^2

/// Order of Operations

/// Understanding parentheses in swift

print(350 / 5 + 2)
// defaults to print((350 / 5) + 2) -> 72 - because following BODMAS Rule. (operator precedence)
print(350 / (5 + 2)) // 50

print(((8000 / (5 * 10)) - 32) >> (29 % 5))

/// Math Functions
print(sin(45*Double.pi/180))

print(cos(135 * Double.pi / 180))

print((4.0).squareRoot())
print((2.0).squareRoot())

print(max(5, 10))
print(min(-5, -10))

print(max((2.0).squareRoot(), Double.pi / 2))
