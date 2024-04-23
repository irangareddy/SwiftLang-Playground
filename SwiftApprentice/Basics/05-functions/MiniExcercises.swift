// Mini Challenges

// 1
func printFullName(firstName: String, lastName: String) {
    print("\(firstName) \(lastName)")
}

printFullName(firstName: "Robert", lastName: "Isele")

// 2
func printFullName(_ firstName: String,_ lastName: String) {
    print("\(firstName) \(lastName)")
}

printFullName("Robert","Isele")

// 3
func calculateFullName(_ firstName: String, _ lastName: String) -> String {
    "\(firstName) \(lastName)"
}

print(calculateFullName("Robert","Isele"))

func calculateFullNameR(_ firstName: String, _ lastName: String) -> (fullName: String, length: Int){
    let fullName = "\(firstName) \(lastName)"
    return (fullName, fullName.count)
}

let person: (fullName: String, length: Int)  = calculateFullNameR("Robert","Isele")
print(person.fullName)
print(person.length)