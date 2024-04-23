// Advanced Parameter Handling

func incrementAndPrint(_ value: Int) {
    // value+=1 --> raises error
    print(value)
}

///  error: left side of mutating operator isn't mutable: 
///  'value' is a 'let' constant

/// It is important to note that Swift copies the value 
/// before passing it to the function, a behavior known as pass-by-value.

func incrementAndPrint(_ value: inout Int) {
    value+=1
    print(value)
}

var value = 68
incrementAndPrint(&value)
print(value)

// Overloading - declare similar functions with similar names

func printMultipleOf(multiplier: Int, andValue: Int)  {}     
func printMultipleOf(multiplier: Int, and value: Int) {}     
func printMultipleOf(_ multiplier: Int, and value: Int) {}     
func printMultipleOf(_ multiplier: Int, _ value: Int) {}     

// Overload return type

func getValue() -> Int {
    1
}

func getValue() -> String {
    "Ranga"
}

let valueInt: Int = getValue()
let valueString: String = getValue()

print(valueInt, valueString)

// Nested Functions

func outer() {
    print("outer")
    func inner() {
        print("inner")
    }
    inner()
}

outer()

// Functions as Variables

func add(_ a: Int, _ b: Int) -> Int {
    a + b
}

var function = add
print(function(4,6))

func subract(_ a: Int, _ b: Int) -> Int {
    a - b
}

function = subract
print(function(4,6))

/// Prints result of function assigned
/// - Parameters:
///   - function: An function as a parameter that accepts two integers and returns an integer as return
///   - a: The first value
///   - b: The second value
func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print(function(a,b))
}

printResult(subract, 43, 21)

// NO RETURN

/// Note: error: global function with uninhabited return type 'Never' is missing call to another never-returning function on all paths
/// - Returns: Never
func infiniteLoop() -> Never {
    while true {

    }
}
