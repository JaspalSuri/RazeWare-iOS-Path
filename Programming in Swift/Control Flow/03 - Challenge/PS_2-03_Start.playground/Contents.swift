/*:
 Copyright (c) 2018 Razeware LLC
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 distribute, sublicense, create a derivative work, and/or sell copies of the
 Software in any work that is designed, intended, or marketed for pedagogical or
 instructional purposes related to programming, coding, application development,
 or information technology.  Permission for such use, copying, modification,
 merger, publication, distribution, sublicensing, creation of derivative works,
 or sale is expressly withheld.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 
 ---
 */

/*:
 Create a variable named `count` and set it equal to 0. Create a `while` loop with the condition `count < 10` which prints out "Count is `X`" (where `X` is replaced with the `count` value) and then increments `count` by 1.
 */
var count = 0
while count < 10 {
    print("Count is \(count)")
    count += 1
}
/*:
 **Simulate the roll of a six-sided die, and roll until you get a 6**
 Create a variable named count and set it equal to 0. Create another variable named roll and make it an Int. Create a repeat-while loop. Inside the loop, set roll equal to `Int.random(in: 1...6)`, which means to pick a random number between 1 and 6. Then increment count by 1. Finally, print "After `X` rolls, roll is `Y`" (where `X` is the value of count and `Y` is the value of roll). Set the loop condition so that the loop finishes when the first 6 is rolled.
 */
// Method 1 - Shorter
count = 0
var roll: Int
repeat {
    roll = Int.random(in: 1...6)
    count += 1
    print("(1) After \(count) rolls, roll is \(roll)")
} while roll != 6

// Method 2 - Longer and leaves room for error if dealing with a much larger sided die (120 being the max, as per Fermat's Library)
count = 0
// var roll: Int
repeat {
    roll = Int.random(in: 1...6)
    count += 1
    print("(2) After \(count) rolls, roll is \(roll)")
    if roll == 6 {
        break
    }
} while count < 100
/*:
 **Extra Challenge!**
 Stop the execution of the loop when `count` is greater than 5. You've learned two ways to do this so far in this course!
 */
count = 0
repeat {
    roll = Int.random(in: 1...6)
    count += 1
    print("(3) After \(count) rolls, roll is \(roll)")
} while roll != 6 && count < 5
