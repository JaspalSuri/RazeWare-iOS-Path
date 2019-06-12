// Dictionaries
// Contain Keys and Values
// Keys must be unique (i.e. pass the vertical line test)
// Learning dictionaries and arrays together might not be ideal, according to Erica Sadun
// Keys can be like any type
    // Array indexes must be Ints
// Keys have no order
    // Indexes must be sequential

// empty dictionary
// types must be explicitly stated for empty dictionaries
var emptyDictionary: [String: Int] = [:]

// type inference works otherwise
var namesAndPets = [
    "Ron" : "🐀",
    "Rincewind" : "Luggage",
    "Thor" : "Hammer",
    "Goku" : "Flying Nimbus"
]
// prints in a different order than the one the KVP (key-value pairs were entered in)
// i.e. dictionaries do not index KVP's
print(namesAndPets)

// You can return values by providing the key
// Key
namesAndPets["Rincewind"]
// Value
namesAndPets["Hammer"]
// Nonexistent key
namesAndPets["Calvin"]

// utilizing nil coalescing
let calvinPet = namesAndPets["Calvin"] ?? "No pet for Calvin"

namesAndPets.isEmpty
namesAndPets.count

// Replace keys
// Method 1
// namesAndPets.updateValue("Owl", forKey: "Ron")
namesAndPets["Ron"] = "Owl"
namesAndPets["Calvin"] = "Tiger"

// namesAndPets.removeValue(forKey: "Goku")
namesAndPets["Goku"] = nil
print(namesAndPets)

// print out the characters and pets from the namesAndPets dictionary
for (character, pet) in namesAndPets {
    print("\(character) has a pet named \(pet)")
}

// using a tuple to access the key, value, or both.
for (name, _) in namesAndPets {
    print(name)
}

// directly access the values (or keys)
for pet in namesAndPets.values {
    print(pet)
}

