//: [Previous](@previous)

/*:
 # 1. Fundamentals of Collection Types

 Array, Set and Dictionary are collection types in Swift. And, you can see basic examples about them below.
 */

import Foundation

var genericNumbers: Array<String> = ["1","2","3","4"]

var numbers = ["1","2", "2", "3","4", "4"] //Array
var setNumbers: Set = ["2","1","4","3"] //Set

numbers[0] // "1"
numbers[1] // "2"
numbers[2] // “3"
numbers[3] // "4"

numbers.append("5")
print(numbers) // prints ["1", "2", "3", “4”, "5"]

numbers.insert("13", at: 0)
// ["13", "1", "2", "3", “4”, “5”]

//Empty Array
var arrayOfNumbers: [Int] = []
//Empty Dictionary
var namesOfIntegers: [Int: String] = [:]

var arrayOfNumbers1: [Int] = [1, 2, 3,] //Array literal
var namesOfIntegers1: [Int: String] = [1: "One", 2: "Two", 3: "Three"] //Dictionary literal

//Accessing a Dictionary
namesOfIntegers1[2] //"Two"


//Modifying Copies of Arrays
var numbersOfArray = [1, 2, 3, 4, 5]
var numbersCopyOfArray = numbersOfArray //Assigned to new variable. It's a new copy of array!
numbersOfArray[0] = 9
print(numbersOfArray) // Prints "[9, 2, 3, 4, 5]" //Memory address 0x100006db0
print(numbersCopyOfArray)// Prints "[1, 2, 3, 4, 5]" //Memory address 0x100006ac8

// An integer type with reference semantics
class IntegerReference {
    var value = 10
}
var firstIntegers = [IntegerReference(), IntegerReference()]
var secondIntegers = firstIntegers

// Modifications to an instance are visible from either array
firstIntegers[0].value = 100
print(firstIntegers[0].value)// Prints "100"  0x120006db8
print(secondIntegers[0].value)// Prints "100" 0x120006db8

// Replacements, additions, and removals are still visible
// only in the modified array
firstIntegers[0] = IntegerReference()
print(firstIntegers[0].value)// Prints "10"   0x100006db0
print(secondIntegers[0].value)// Prints "100" 0x120006db8

var numberList = [1, 2, 3, 4, 5]
var firstCopy = numberList
var secondCopy = numberList

// The storage for 'numbers' is copied here
numberList[0] = 100
numberList[1] = 200
numberList[2] = 300
// 'numberList' is [100, 200, 300, 4, 5]
// 'firstCopy' and 'secondCopy' are [1, 2, 3, 4, 5]


//Bridging Between Array and NSArray
let colors = ["periwinkle", "rose", "moss"]
let moreColors: [String?] = ["ochre", "pine"]

let url = URL(fileURLWithPath: "names.plist")
(colors as NSArray).write(to: url, atomically: true)
// true

(moreColors as NSArray).write(to: url, atomically: true)
// error: cannot convert value of type '[String?]' to type 'NSArray'


//Higher Order Functions
var animals = ["Rabbit", "Cat", "Dog", "Dolphin"]
animals.sorted() //["Cat", "Dog", "Dolphin", "Rabbit"]
animals.sorted(by: >) //["Rabbit", "Dolphin", "Dog", "Cat"]

let mapNumbers = ["1", "2", "3", "4"]
let numbersAsString = mapNumbers.map {Int($0)} //[1, 2, 3, 4]

let compactNumbers = ["1", "2", "Emre"]
compactNumbers.compactMap {
    print(Int($0) as Any) //Optional(1)
                          //Optional(2)
                          //nil
}


let cast = ["Vivien", "Swift", "Kim", "Emre"]
let shortNames = cast.filter { $0.count < 5 }
print(shortNames)
// Prints "["Kim", "Emre"]"

let reduceNumbers = [1, 2, 3, 4]
let numberSum = reduceNumbers.reduce(0, { x, y in
    x + y // numberSum == 10
}) // or let numberSum = reduceNumbers.reduce(0, +) // numberSum == 10

//: [Next](@next)

