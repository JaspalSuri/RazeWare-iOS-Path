/*:
 # Enum (or Enoom) | Enumerations
*/
enum Month: Int {
    case january = 1, february, march, april, may, june, july, august, september, october, november, december
}

// return rawValue, since we assigned its type to an Int
Month.january.rawValue // starts at 0 be default
// return the case from the given rawValue
Month(rawValue: 5)

// # This is the implicit way
// let month = Month.october

let month: Month = .october

var otherMonth: Month = .november
otherMonth = .december

enum Semester {
    // you can add 'documentation' for each case individually with three slashes
    // not exactly sure how this can be utilized
    /// 🍂
    case fall
    /// 🌸
    case spring
    /// ☀️
    case summer
}

Semester.fall
otherMonth = .may

let semester: Semester
switch otherMonth {
case .august, .september, .october, .november, .december:
    semester = .fall
case .january, .february, .march, .april, .may:
    semester = .spring
case .june, .july:
    semester = .summer
}

print("May is the \(Month.may.rawValue)th month of the year and in the \(semester) semester/season.")
// returns "May is the 5th of the year and in the spring semester/season.
// there currenlty doesn't appear to be an inuitive way of capitalizing the first letter in the word, not for a lack of trying.

// Calculate the difference/distance between two cases by their raw value
let monthsUntilWinterBreak = Month.december.rawValue - month.rawValue

// Two Dimensional Points were last visited in the Switch statements lesson

enum TwoDimensionalPoint {
    case origin
    case onXAxis(Double)
    case onYAxis(Double)
    case nonZeroCoordinate(Double, Double)
}

// see what type of coordinate the provided coordinate is
let coordinates = (1.0, 3.0)
let twoDimensionalPoint: TwoDimensionalPoint
switch coordinates {
case(0, 0):
    twoDimensionalPoint = .origin
case (_, 0):
    twoDimensionalPoint = .onXAxis(coordinates.0)
case(0, _):
    twoDimensionalPoint = .onYAxis(coordinates.1)
default:
    twoDimensionalPoint = .nonZeroCoordinate(coordinates.0, coordinates.1)
}

// obtain coordinates when given specific types of coordinates
let pointValue: (Double, Double)
switch twoDimensionalPoint {
case .origin:
    pointValue = (0, 0)
// this is the best case of using let, as you don't have to type it before each value
// when you type it before the dot
case let .onXAxis(x):
    pointValue = (x, 0)
case .onYAxis(let y):
    pointValue = (0, y)
case .nonZeroCoordinate(let x, let y):
    pointValue = (x, y)
}
