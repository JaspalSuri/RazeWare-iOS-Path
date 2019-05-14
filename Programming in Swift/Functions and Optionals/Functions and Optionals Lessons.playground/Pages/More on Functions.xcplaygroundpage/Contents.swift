// # More on Functions


// Overloading
// Declare similar functions with a single name
// They are distinguished by what is in their parameter list
// Relying on XCode's autocomplete feature, one is able to discern which function to use.
// To utilize a function that doesn't contain parameters and has different return types, assign it to a variable of the same type
// e.g. let valueInt: Int = getValue()
// functions are a data type

func add(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

// by assigning the function to a variable, the variable does not inherit the parameter names, only the types
var function = add
function(4, 2)

func subtract(number1: Int, number2: Int) -> Int {
    return number1 - number2
}
function = subtract
function(5, 7)

// passing a function into another function
//1
func printResult(_ operation: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = operation(a, b)
    print(result)
}

printResult(add, 4, 2)
printResult(subtract, 4, 2)

// utilize a typealias

typealias Operate = (Int, Int) -> Int
//2
// you can shorten the parameters to this instead
func printResults(_ operation: Operate, _ a: Int, _ b: Int) {
    // ...
}
