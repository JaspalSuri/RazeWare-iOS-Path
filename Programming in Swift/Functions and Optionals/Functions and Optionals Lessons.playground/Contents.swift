/*:
 # Functions and Optionals
 */
// ## Intro to functions

// function declaration
func printMeow()
// body of the statement (in almond braces)
{
    print("Meow!")
}

printMeow()

// parameterized function:

// We have set the parameters in the function
func printMultipleOfFive(multiplier: Int)
{
 print("5 * \(multiplier) = \(5 * multiplier)")
}

// We pass in a value, 10, in our function
printMultipleOfFive(multiplier: 10)
// returns:
// 5 * 10 = 50

// setting multiplier parameter to a default value with the assignment operator (=)
func printMultipleOf(number: Int, multiplier: Int = 1) {
    // using a multiplicant
    print("\(number) * \(multiplier) = \(number * multiplier)")
}
printMultipleOf(number: 4, multiplier: 3)
// relying on the default value of 1
printMultipleOf(number: 10)

// you can use return to store and reuse what your function evaluates
// you can use an underscore to avoid having to use an argument label in cases where the argument labels can't be usefully distinguished
// in this case, we rely on multiplication's commutative property to multiply numbers in any order
func multiply(_ factor1: Int, _ factor2: Int) -> Int {
    return factor1 * factor2
}
// without underscores as argument labels
//let result = multiply(factor1: 7, factor2: 3)
// storing what we've returned from our multiply function into result
let result = multiply(8, 4)
print(result)

// using tuples and an external parameter name
func multiplyAndDivide(_ number: Int, by factor: Int) -> (product: Int, quotient: Int) {
        return (number * factor, number / factor)
}

let results = multiplyAndDivide(4, by: 2)
let (product, quotient) = results
product // 8
quotient // 2

// stylistic decision: make functions read like sentences (which is sometimes confusing)
