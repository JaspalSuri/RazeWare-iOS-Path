//: # Closures
    // a function without a name, or an "anonymous function"
    // provide more syntactic options than functions
    // named that way, because they have the ability to close over the constants and variables within their own scope
        // this allows you to access things within and outside of the closure

// starter code
typealias Operate = (Int, Int) -> (Int)

func add(number1: Int, number2: Int) -> Int {
    return number1 + number2
}
func printResultOf(_ a: Int, _ b: Int, operation: Operate) {
    let result = operation(a, b)
    print("Result is \(result)")
}
printResultOf(5, 3, operation: add)

// Closure versions below

// no argument labels are used
//let multiply: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
//    return a * b
//}

let multiply: (Int, Int) -> Int = { (a, b) in
    a * b
}

//let multiply: (Int, Int) -> Int = {
//    $0 * $1
//}

// a and b are not enclosed in parentheses
let divide: Operate = { a, b in
    return a / b
}

multiply(4, 2)

printResultOf(21, 2, operation: multiply)
printResultOf(21, 2, operation: divide)

//printResultOf(40, 20, operation: { $0 - $1 })
// trailing closure syntax - works when it's the last parameter
printResultOf(40, 20) { $0 - $1 }

// takes no parameters and returns nothing
// Void is a type alias for an empty set of parentheses
// "Void -> Void" & "Void -> ()" won't work
// since the parameters need to be enclosed in parentheses
let voidClosure: () -> Void = {
    print("Yay, Swift!")
}

//: Closures close over values!
//////////////
var count = 0
let incrementCount = {
    count += 1
}
/////////////

incrementCount()
incrementCount()
incrementCount()
incrementCount()
count


/////////////
func makeCountingClosure() -> () -> Int {
    var count = 0
    let incrementCount: () -> Int = {
        count += 1
        return count
    }
    return incrementCount
}
////////////

let counter1 = makeCountingClosure()
let counter2 = makeCountingClosure()

counter1()
counter2()
counter1()
counter2()
counter2()
