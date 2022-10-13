/*
--------
Generics
--------
*/

import Foundation

var array = ["one", "two", "three"]
array.append("four")

// compile time error: since array has string data
// array.append(5)

print(array)


// custom generic content


struct Container<Value> {
    var value: Value
    var date: Date
}

let stringContainer = Container(value: "Test", date: Date())
let intContainer = Container(value: 1, date: Date())

print(stringContainer, intContainer)