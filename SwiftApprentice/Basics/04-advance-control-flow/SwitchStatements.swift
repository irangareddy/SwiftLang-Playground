/// Switch Statements

let number = 10

switch number {
    case 0:
        print("XERO!")
    default:
        print("Like any other number")
}

switch number {
    case 10:
        print("Its 10!")
    default:
        break
}

let string = "Dog"

switch string {
case "Cat", "Dog":
  print("Animal is a house pet.")
default:
  print("Animal is not a house pet.")
}

// Advanced Switch Statements

let hourOfDay = 12
var timeOfDay = ""

switch hourOfDay {
case 0, 1, 2, 3, 4, 5:
  timeOfDay = "Early morning"
case 6, 7, 8, 9, 10, 11:
  timeOfDay = "Morning"
case 12, 13, 14, 15, 16:
  timeOfDay = "Afternoon"
case 17, 18, 19:
  timeOfDay = "Evening"
case 20, 21, 22, 23:
  timeOfDay = "Late evening"
default:
  timeOfDay = "INVALID HOUR!"
}

// Simple

switch hourOfDay {
case 0...5:
  timeOfDay = "Early morning"
case 6...11:
  timeOfDay = "Morning"
case 12...16:
  timeOfDay = "Afternoon"
case 17...19:
  timeOfDay = "Evening"
case 20..<24:
  timeOfDay = "Late evening"
default:
  timeOfDay = "INVALID HOUR!"
}

print(timeOfDay)

// Conditional Case

switch number {
    case _ where number % 2 == 0:
        print("Even")
    default:
        print("Odd")
}

// Partial Matching

let coordinates = (x: 3, y: 2, z: 5)

switch coordinates {
case (0, 0, 0): // 1
  print("Origin")
case (_, 0, 0): // 2
  print("On the x-axis.")
case (0, _, 0): // 3
  print("On the y-axis.")
case (0, 0, _): // 4
  print("On the z-axis.")
default:        // 5
  print("Somewhere in space")
}

switch coordinates {
case (0, 0, 0):
  print("Origin")
case (let x, 0, 0):
  print("On the x-axis at x = \(x)")
case (0, let y, 0):
  print("On the y-axis at y = \(y)")
case (0, 0, let z):
  print("On the z-axis at z = \(z)")
case let (x, y, z):
  print("Somewhere in space at x = \(x), y = \(y), z = \(z)")
}

switch coordinates {
    case let (x, y, _) where x == y:
        print("Along the y == x line")
    case let (x, y, _) where y == x*x:
        print("Along the y == x^2 line")
    default:
        break
}

// Mini Exercises

let age = 23

switch age {
  case 0...2:
    print("Infant")
  case 3...12:
    print("Child")
  case 13...19:
    print("Teenager")
  case 20...39:
    print("Adult")
  case 40...60:
    print("Middle-aged")
  default:
    print("Elderly")
}

let person = (name: "Ranga", age: age)

switch person.age {
  case 0...2:
    print("\(person.name) is an Infant")
  case 3...12:
    print("\(person.name) is a Child")
  case 13...19:
    print("\(person.name) is a Teenager")
  case 20...39:
    print("\(person.name) is an Adult")
  case 40...60:
    print("\(person.name) is a Middle-aged")
  default:
    print("\(person.name) is an Elderly")
}
