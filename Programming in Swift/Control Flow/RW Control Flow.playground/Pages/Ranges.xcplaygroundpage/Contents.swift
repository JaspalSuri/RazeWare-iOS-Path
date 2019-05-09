// range from 0 to 5 inclusive
let closedRange = 0...5

// to make it 0 - 4
// useful for when using a constant/variable that is in place of 5
let halfOpenRange = 0..<5

// You can reuse the ranges to make the code modular and cleaner.
for i in halfOpenRange {
    print("Hello!")
}
print(" --- --- --- ")

var sum = 0
let count = 10

for i in 1...count {
    sum += i
}
print(" --- --- --- ")

// A silly but basic example of adding a condition
// This will print Hodor 6 to Hodor 10.
for i in 0...count where i > 5 {
    print("Hodor \(i)")
}
print(" --- --- --- ")

// print odd numbers in the loop
for i in 1...count where i % 2 == 1 {
    print("\(i) is an odd number.")
}
print(" --- --- --- ")


// what to do when you reach a certain number and want to do something special
// and then continue on with the loop, if you don't want it to be fully replace, simply remove the break
for floor in 10...15 {
    if floor == 13 {
        print("👻")
        // continue helps end the current iteration of the loop here and then starts with the next number and runs it through
        continue
    }
    print("Stop at Floor \(floor)")
}
print(" --- --- --- ")

floors: for floor in 12...15 {
    rooms: for room in 11...16 {
        // place your exceptions before the action that you want to apply to everything
        if room == 13 {
            print("👻(2)")
            // if you want to skip rooms 13 and higher
            continue floors
        }
        print("Clean room \(floor)\(room)")
    }
}

