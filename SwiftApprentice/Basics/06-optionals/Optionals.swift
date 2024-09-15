/// Optionals

/// nil
var errorCode: Int?
// has value
errorCode = 404
// has no value
errorCode = nil

/// Unwrapping Optionals

var result: Int? = 30
print(result as Any)
// print(result + 1)

// Force Unwrapping

var name: String? = "Ranga Reddy"
let age: Int? = 23

print(name!, age!)

name = nil
// print(name!) -> Crashes

name = "Ranga Reddy"

if name != nil {
    print(name!)
} else {
    print("No Name")
}

// Optional Binding

if let unwrappedName = name {
    print(unwrappedName)
}

// shadowing
if let name = name {
    print(name)
}

// unwrap multiple items
if let name = name, let age = age, age <= 40 {
    print("\(name) is \(age) years old and he is not old")
}

// Guard

func guardMyCastle(name: String? = nil) {
  guard let castleName = name else {
    print("No castle!")
    return 
  }
  
  // At this point, `castleName` is a non-optional String
  
  print("Your castle called \(castleName) was guarded!")
}
guardMyCastle()
guardMyCastle(name: "Roma")

// Nil Coalesing

var myFavoriteSong: String? = "Aasha Pasham"
let song = myFavoriteSong ?? "Crazy"