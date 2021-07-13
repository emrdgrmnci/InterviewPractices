//: [Previous](@previous)
/*:
Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.



Example 1:

Input: nums = [1,2,3,1]
Output: true
Example 2:

Input: nums = [1,2,3,4]
Output: false
Example 3:

Input: nums = [1,1,1,3,3,4,3,2,4,2]
Output: true


Constraints:

1 <= nums.length <= 105
-109 <= nums[i] <= 109

 */

/**
 * Question Link: https://leetcode.com/problems/contains-duplicate/
 * Primary idea: traverse the array and use a set to check duplicates
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */
func containsDuplicate(_ nums: [Int]) -> Bool {
    let setNums = Set(nums) //O(n)

    if nums.count != setNums.count {
        return true
    }

    return false
}
containsDuplicate([1,2,3])

/**
 Time complexity : O(n^2), Space complexity : O(1)
*
*/

func containsDuplicate2(_ nums: [Int]) -> Bool {

    for i in 0 ..< nums.count {
        for j in 0 ..< i {
            if nums[j] == nums[i] {
                return true
            }
        }
    }

    return false
}
containsDuplicate2([1,2,3,1])

/**
 * Time Complexity:  O(nlogn), Space Complexity: O(1)
 */
func containsDuplicateSorted(_ nums: [Int]) -> Bool {
    nums.sorted() // O(nlogn)
    for i in 0 ..< nums.count - 1 { // O(n)
        if nums[i] == nums[i + 1] {
            return true
        }
    }
    return false
}

containsDuplicateSorted([1,2,3,4,1])



//: [Next](@next)
