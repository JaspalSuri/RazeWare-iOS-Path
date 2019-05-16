// Arrays
// Stores an ordered list of values of the same type

//let pastries: [String] = ["cookie", "cupcake", "donut", "pie"]

// declares an empty array as a variable
var pastries: [String] = []
// add an item to an array
pastries.append("cookie")
// add several items to an array
pastries += ["cupcake", "donut", "pie", "brownie"]

// remove all the items contained within the array
//pastries.removeAll()

// check if the array is empty
// returns a boolean value
pastries.isEmpty

// returns the int amount of items in the array
pastries.count

// returns the first item in the array
pastries.first

// returns the last item in the array
pastries.last

// unwrapping as the values are optional since they might not exist
// mix and max for strings returns values based on their alphabetical order
if let first = pastries.first, let min = pastries.min(), let max = pastries.max() {
    print(first, min, max)
}

// Sets the constant to the first item of the pastries array
let firstElement = pastries[0]

// Sets the constant to multiple items within the array (2nd-4th)
let firstThree = Array(pastries[1...3])
// Since it is its own array now, the first item will be whatever the second item was of the other array.
firstThree[0]

// The follow checks if an item (which is a string in this case) is within the array.
pastries.contains("donut")
pastries.contains("piza")
// mixing types to search will not work
// pastries.contains(1337)

// insert items at an index
pastries.insert("tart", at: 0)
// remove whatever exists at the given index
pastries.remove(at: 0)

// remove the last and first item, respectively
pastries.removeLast()
pastries.removeFirst()

// return what currently exists within the pastries array
pastries

// replace items at the given index range with the provided array of items
pastries[0...1] = ["brownie", "fritter", "tart"]
// notice how it does not replace the third item, but propogates it down the list
pastries

// replace the indeces of two items with swapAt
pastries.swapAt(1, 2)

// using a tuple, you can print the index and item by enumerating the pastries array
// the order of the index and item matter, and this works for individual strings or anything else that can be looped through and contains an index
for (index, pastry) in pastries.enumerated() {
    print(index, pastry)
}
