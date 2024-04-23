// Functions

func helloWorld() {
    print("Hello World")
}

helloWorld()

// Parameters

func sayHello(name: String) {
    print("Hello, \(name)")
}

sayHello(name: "Ranga")

func printMultipleOfFive(value: Int) {
  print("\(value) * 5 = \(value * 5)")
}
printMultipleOfFive(value: 10)

// Make it general

func printMultipleOf(multiplier: Int, andValue: Int) {
    print("\(multiplier) * \(andValue) = \(multiplier * andValue)")
}
printMultipleOf(multiplier: 4, andValue: 3)

// Consider internal and extername name for parameters
// Note: Fuction calls should read like a sentence
func printMultipleOf(multiplier: Int, and value: Int) {
    print("\(multiplier) * \(value) = \(multiplier * value)")
}
printMultipleOf(multiplier: 4, and: 3)

// Underscore when external name is not required

func printMultipleOf(_ multiplier: Int, and value: Int) {
    print("\(multiplier) * \(value) = \(multiplier * value)")
}
printMultipleOf(4, and: 3)

// More generic and default parameters

func printMultipleOf(_ multiplier: Int, _ value: Int = 1) {
    print("\(multiplier) * \(value) = \(multiplier * value)")
}
printMultipleOf(4, 3)
printMultipleOf(4)

// Return Values

func multiply(_  number: Int, by multiplier: Int) -> Int {
    return number * multiplier
}

print(multiply(45, by: 2))

// return is not required when you have single statement in function
func multiplyAndDivide(_  number: Int, by factor: Int) -> (product: Int, quotient: Int) {
    (number * factor, number / factor)
}

let results = multiplyAndDivide(3212, by: 21)
print(results.product, results.quotient)