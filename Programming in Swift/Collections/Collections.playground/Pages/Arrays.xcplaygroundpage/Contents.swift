// Arrays
// Stores an ordered list of values of the same type

//let pastries: [String] = ["cookie", "cupcake", "donut", "pie"]

var pastries: [String] = []
pastries.append("cookie")
pastries += ["cupcake", "donut", "pie", "brownie"]

//pastries.removeAll()
pastries.isEmpty

pastries.count
pastries.first
pastries.last

// mix and max for strings returns values based on their alphabetical order
if let first = pastries.first, let min = pastries.min(), let max = pastries.max() {
    print(first, min, max)
}

let firstElement = pastries[0]
let firstThree = Array(pastries[1...3])
firstThree[0]

pastries.contains("donut")
pastries.contains("piza")

pastries.insert("tart", at: 0)
pastries.remove(at: 0)
pastries.removeLast()
pastries.removeFirst()
pastries

pastries[0...1] = ["brownie", "fritter", "tart"]
pastries

pastries.swapAt(1, 2)

for (index, pastry) in pastries.enumerated() {
    print(index, pastry)
}
