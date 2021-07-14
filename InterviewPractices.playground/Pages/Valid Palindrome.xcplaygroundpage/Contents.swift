//: [Previous](@previous)

/*:

 # 5. Valid Palindrome

 Given a string s, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.


 Example 1:

 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.
 Example 2:

 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.

 */

/**
 * Time Complexity:  O(n)
 */

func isPalindrome(_ s: String) -> Bool {
    let formatted = s.lowercased().filter { c in c.isLetter || c.isNumber }
    let reversed = String(formatted.reversed())
    return formatted == reversed ? true : false
}
isPalindrome("A man, a plan, a canal: Panama")
isPalindrome("race a car")
isPalindrome("a.")
isPalindrome("#$ArabaRa%^&")
isPalindrome("1512")
//: [Next](@next)
