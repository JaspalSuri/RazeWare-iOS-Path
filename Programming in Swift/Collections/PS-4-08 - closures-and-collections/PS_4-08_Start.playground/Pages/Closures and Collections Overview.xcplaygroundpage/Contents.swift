//: # Closures & Collections
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

//let largePrices = prices.filter { price -> Bool in
//  return price > 5
//}
let largePrices = prices.filter { $0 > 5 }

// `filter` as a `for` loop
var arrayForFilteredResults: [Double] = []
for price in prices where price > 5 {
    arrayForFilteredResults.append(price)
}
arrayForFilteredResults

//: `map`
let salePrices = prices.map { price -> Double in
    return price * 0.9
}

let salePrices2 = prices.map { Double($0) * 0.9 }

// `map` as a `for` loop
var arrayForSalePrices: [Double] = []
for price in prices {
    arrayForSalePrices.append(price * 0.9)
}
arrayForSalePrices

//: `reduce`
//let sum = prices.reduce(0) { result, price -> Double in
//  return result + price
//}

let sum = prices.reduce(0, +)

// `reduce` as a `for` loop - `array` version
var doubleForSum = 0.0
for price in prices {
    doubleForSum += price
}
doubleForSum


var stock = [1.50: 5, 10.00: 2, 4.99: 20, 2.30: 5, 8.19: 30]

let stockSum = stock.reduce(into: []) { result, pair in
    result.append(pair.key * Double(pair.value))
}

// `reduce` as a `for` loop - `dictionary` version
var arrayForStockValues: [Double] = []
for (price, quantity) in stock {
    let value = price * Double(quantity)
    arrayForStockValues.append(value)
}
arrayForStockValues


//: `compactMap` & `flatMap`
let userInput = ["meow!", "15", "37.5", "seven"]

let validInput = userInput.compactMap { input in
    Int(input)
}

// `compactMap` as a `for` loop
var arrayForValidInput: [Int] = []
for input in userInput {
    guard let input = Int(input) else {
        continue
    }
    arrayForValidInput.append(input)
}
arrayForValidInput


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
print(sortedDwarves)


// `flatMap` as a `for` loop - I've leave this one as a bonus challenge!
// Solution by @CatieMeow
// https://forums.raywenderlich.com/t/programming-in-swift-closures-and-collections-ray-wenderlich/47109/23?u=jsios
var dwarvesAfterM2: [String] = []
// flatMap
for dwarfArray in arrayOfDwarfArrays
{
    // filter
    var dwarves: [String] = []
    for dwarf in dwarfArray
    {
        if dwarf > "M"
        {
            dwarves.append(dwarf)
        }
    }
    
    dwarvesAfterM2 += dwarves
}
