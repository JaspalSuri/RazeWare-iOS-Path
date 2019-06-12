// Sets
    // Passes the vertical line test; multiple values are not accepted
    // Sets are unordered

var someSet: Set<Int> = [1, 2, 3, 1]

// the longform way of declaring arrays and dictionaries
let someArray: Array<Int>
let someDictionary: Dictionary<String, Int>

someSet.contains(1)
someSet.contains(99)

someSet.insert(5)
someSet.insert(1)

let removedElement = someSet.remove(3)
someSet.remove(309)
someSet

let anotherSet: Set<Int> = [5, 7, 13]

// finds matches
let intersection = someSet.intersection(anotherSet)

// finds differences
let difference = someSet.symmetricDifference(anotherSet)

// merges the sets together (without destroying them), into the constant or variable they are set to
let union = someSet.union(anotherSet)

// actually merges data from one set into the other
someSet.formUnion(anotherSet)
someSet
anotherSet

