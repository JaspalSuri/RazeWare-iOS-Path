import UIKit

var string = "Hello, playground"
// change string's value
string = "Hi!"
// Use ctrl + shift + enter to run the Playground

var currentValue = 50
var targetValue = 55

var difference = currentValue - targetValue

// return the absolute value if the difference is negative
if difference < 0 {
    difference *= -1
}

print(difference)

// Use shift-command-Y to toggle the console's visibility

