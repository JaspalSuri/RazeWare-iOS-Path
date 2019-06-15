//: # Short Closures

var names = ["Zeus", "Poseidon", "Ares", "Demeter"]

// sort() & sort(by:) - Sorts in place / mutates the original
names.sort()
names.sort(by: { (a, b) -> Bool in
    a > b
})

// sorted() & sorted(by:) - Returns a new collection that is sorted
let longToShortNames = names.sorted {
    $0.count > $1.count
}

longToShortNames
names


//: `filter`
var prices = [1.50, 10.00, 4.99, 2.30, 8.19]

let largePrices = prices.filter { $0 > 5 }


//: `map`
let salePrices2 = prices.map { Double($0) * 0.9 }


//: `reduce`
let sum = prices.reduce(0, +)


//: `reduce into`
var stock = [1.50: 5, 10.00: 2, 4.99: 20, 2.30: 5, 8.19: 30]

let stockSum = stock.reduce(into: []) { result, pair in
    result.append(pair.key * Double(pair.value))
}


//: `compactMap` & `flatMap`
let userInput = ["meow!", "15", "37.5", "seven"]

let validInput = userInput.compactMap { input in
    Int(input)
}


let arrayOfDwarfArrays = [
    ["Sleepy", "Grumpy", "Doc"],
    ["Thorin", "Nori"]
]

// TODO: Use `flatMap` and `filter` to create a new array that only contains the dwarves with names starting after "M"
let dwarvesAfterM = arrayOfDwarfArrays.flatMap { array -> [String] in
    return array.filter { dwarf -> Bool in
        dwarf > "M"
    }
}
let sortedDwarves = dwarvesAfterM.sorted()


// `flatMap` as a `for` loop - I've leave this one as a bonus challenge!
