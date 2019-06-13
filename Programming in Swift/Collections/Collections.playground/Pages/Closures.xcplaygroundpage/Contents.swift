//: # Closures
    // a function without a name, or an "anonymous function"
    // provide more syntactic options than functions
    // named that way, because they have the ability to close over the constants and variables within their own scope
        // this allows you to access things within and outside of the closure

// starter code
// the Operate type takes two Ints and returns one Int
typealias Operate = (Int, Int) -> (Int)

// This function that complies with the "Operate" type takes the sum of two Ints
func add(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

// This function takes two Ints and an argument of type "Operate"
func printResultOf(_ a: Int, _ b: Int, operation: Operate) {
    // this takes the Ints the user provides and places them in a function that complies with the Operate type
    let result = operation(a, b)
    // prints the result, based on how the two Ints are used, if at all
    print("Result is \(result)")
}

// takes two Ints and passes them again into the add function
printResultOf(5, 3, operation: add)

// Closure versions below

// no argument labels are used
let multiply0: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a * b
}

// Shortened and relies on type inference
let multiply1: (Int, Int) -> Int = { (a, b) in
    a * b
}

// Removes the declared parameters and assumes the user will only type in the appropriate amount
let multiply2: (Int, Int) -> Int = {
    $0 * $1
}

// a and b are not enclosed in parentheses
// the types are not explictly stated
let divide: Operate = { a, b in
    return a / b
}

// use the closure as you would with a function
multiply2(4, 2)

printResultOf(21, 2, operation: multiply1)
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

voidClosure()

//: Closures close over values!
//////////////
var count = 0
let incrementCount = {
    count += 1
}
/////////////

// each time the closure is called, it refers to the current value of count
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
