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
 ## Challenge Time - Dictionaries!
 
 Create a dictionary with the following keys: name, profession, country, state, and city. For the values, put your own name, profession, country, state, and city.
 */
// changed for readability; it also makes entering in details easier
var personalInformation = [
    "name" : "Jaspal Suri",
    "profession" : "NA",
    "country" : "United States",
    "state" : "NA",
    "city" : "NA"]
/*:
 You suddenly decide to move to Cleveland. Update your city to Cleveland, your state to Ohio, and your country to USA.
 */
personalInformation["city"] = ("Cleveland")
personalInformation["state"] = ("Ohio")
// if I had "USA" listed as the country (instead of it spelled out), I could have compared values instead for the country with "==" to check for equality
personalInformation["country"] = ("USA")
/*:
 Given a dictionary in the above format, write a function that prints a given person's city and state.
 */
// Less code would have been written if an if-else statement was used in place of the guard statement
func cityAndState(ofPerson person: [String : String]) {
    let name = "Jane Doe"
    guard let city = person["city"], let state = person["state"]
        else {
            print("No city and/or state was provided.")
            return
    }
    print("\(name) lives in \(city), \(state).")
}
cityAndState(ofPerson: personalInformation)
cityAndState(ofPerson: ["city" : "Austen", "state" : "Texas"])
