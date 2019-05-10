// # Switch Statements

let number = Int.max
let numberDescription: String


switch number {
case 0:
    numberDescription = "Zero"
case 1...9:
    numberDescription = "Between 1 and 9"
case let negativeNumber where negativeNumber < 0:
    numberDescription = "Negative"
case _ where number > .max / 2:
    numberDescription = "Very large!"
default:
    numberDescription = "No Description"
}

let numberIsEven: Bool
// Evaluating things here help with avoiding bugs down the line
// and reduce the need for where clauses
// called "switching on an expression"
switch number % 2 {
case 0:
    numberIsEven = true
default:
    numberIsEven = false
}

// You can use compound cases
// e.g. - case 1, 2, 3:

let coordinates = (2,0)
let pointCategory: String

switch coordinates {
case (0,0):
    pointCategory = "Origin"
case (let x, 0):
    pointCategory = "On the x-axis at (\(x),0)"
case (0, let y):
    pointCategory = "On the y-axis at (0,\(y))"
case _ where coordinates.0 == coordinates.1:
    pointCategory = "Along y = x"
case let (x, y) where y == x * x:
    pointCategory = "Along y = x ^ 2"
case let (x, y):
    pointCategory = "No zero coordinates. x = \(x), y = \(y)"
}

