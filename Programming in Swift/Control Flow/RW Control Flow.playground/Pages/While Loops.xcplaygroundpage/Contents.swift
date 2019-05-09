//: [Previous](@previous)
//: [Next](@next)
/* while <condition> {
 <loop code >
 }
 */

// 'i' essentially stands for "index"
var i = 1

while i < 10 || i <= 9 {
    print(i)
    i += 1
}
print("--- --- ---")

// do/repeat while loop

i = 1
repeat {
    print(i)
    if i == 5 {
        break
    }
    i += 1
} while i < 10

print("--- --- ---")

//i = 10
//repeat {
//    print(i)
//} while i < 10
//
//print("--- --- ---")

