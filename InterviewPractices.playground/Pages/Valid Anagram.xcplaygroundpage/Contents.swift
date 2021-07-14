//: [Previous](@previous)

/*:
 # 4. Valid Anagram

 Given two strings s and t, return true if t is an anagram of s, and false otherwise.

 Example 1:

 Input: s = "anagram", t = "nagaram"
 Output: true
 Example 2:

 Input: s = "rat", t = "car"
 Output: false
 */

import Foundation

/**
 * Time Complexity:  O(nlogn), Space Complexity: O(1)
 */
func isAnagram1(_ s: String, _ t: String) -> Bool {

    let sList = Array(s)
    let tList = Array(t)

    if sList.sorted() == tList.sorted() {
        return true
    }

    return false
}

isAnagram1("anagram", "nagaram")

/**
 * Time Complexity:  O(n)
 */
func isAnagram2(_ s: String, _ t: String) -> Bool {

    if s.count != t.count {
        return false
    }

    var src = s
    t.forEach {
        if let charRange = src.range(of: String($0)) {
            src.remove(at: charRange.lowerBound)
        }
    }

    if src.count == 0 {
        return true
    }
    return false
}

isAnagram2("anagram", "nagaram")

//: [Next](@next)

