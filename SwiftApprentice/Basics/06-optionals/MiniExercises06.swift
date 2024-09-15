/// Mini Exercises

// 1
var myFavoriteSong: String? = "Aasha Pasham"

// When on vacation, no songs only chill

myFavoriteSong = nil

// 2
var parsedInt = Int("10")
debugPrint(type(of: parsedInt), String(describing: parsedInt))
parsedInt = Int("Ten")
debugPrint(type(of: parsedInt), String(describing: parsedInt))
// The string might become Int or not

// 3
let dog = try parsedInt
print(String(describing: dog))

if let myFavoriteSong = myFavoriteSong {
    print("I love listening \(myFavoriteSong) song")
} else {
    print("I don't have any song to sing")
}