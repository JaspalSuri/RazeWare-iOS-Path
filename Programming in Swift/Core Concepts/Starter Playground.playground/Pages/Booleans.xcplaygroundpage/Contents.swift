//: [Previous](@previous)
// explictly stated type
let yes: Bool = true

// determines bool type based on type inference
let no = false

// determine boolean value by evaluating an expression
let oneIsGreaterThanTwo = 1 > 2
let twoIsGreaterThanOne = 2 > 1

// greater than or equal to
6 >= 6

// comparing if lhv is equal to rhv
1 == 2

// how to make sure you don't end up with the same result
// use `!` to find what is false

let catDoesNotEqualDog = "Cat" != "Dog"

// change the boolean's value with the not operator
!catDoesNotEqualDog

// e.g. !turnOnLights

// To check if all must be true, use &&
// To check if at least one is true, use ||

// There are no single Ampersand and single Pipe operators (&, |)

// You're free to combine operators as you please.

// The concept of bools is extended further through the use of if statements

// Ternary conditional operator is akin to the shorthand for a simple if statement

// i.e. - condition ? true value : false value
// e.g. - let lunch = burritosAreYummy ? eatBurrito : giveAway

let a = 5
let b = 10

// you can use parentheses for readability
let c = (a < b) ? a : b

//: [Next](@next)
