/*:
 # More Optionals
 */

var result: Int? = 30
print(result)

var catName: String? = "Cutie McCutiePie"
var catAge: Int? = 7

// example of force unwrapping
var unwrappedCatName = catName!

print("The cat's name is \(unwrappedCatName)")

// example of optional binding

/*
if let catName = catName, let catAge = catAge {
    // do something
    print("The cat's name is \(catName) and is \(catAge) years old")
} else {
    // talk about how it didn't work out, since you received nil
    print("No cat name or cat age provided")
}
*/



func printCatInfo(catName: String?, catAge: Int?) {
    guard let catName = catName,
        let catAge = catAge else {
        print("No cat name or cat age provided")
            return
    }
    print("The cat's name is \(catName) and is \(catAge) years old")
}

printCatInfo(catName: "Cutie", catAge: 20)
printCatInfo(catName: nil, catAge: 2)

// nil coalescing
var optionalInt: Int? = nil // 10
var requiredResult = optionalInt ?? 0

