import UIKit

/*
You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.

Increment the large integer by one and return the resulting array of digits.

 

Example 1:

Input: digits = [1,2,3]
Output: [1,2,4]
Explanation: The array represents the integer 123.
Incrementing by one gives 123 + 1 = 124.
Thus, the result should be [1,2,4].
Example 2:

Input: digits = [4,3,2,1]
Output: [4,3,2,2]
Explanation: The array represents the integer 4321.
Incrementing by one gives 4321 + 1 = 4322.
Thus, the result should be [4,3,2,2].
Example 3:

Input: digits = [0]
Output: [1]
Explanation: The array represents the integer 0.
Incrementing by one gives 0 + 1 = 1.
Thus, the result should be [1].
Example 4:

Input: digits = [9]
Output: [1,0]
Explanation: The array represents the integer 9.
Incrementing by one gives 9 + 1 = 10.
Thus, the result should be [1,0].
*/

func plusOne(_ nums: [Int]) -> [Int] {
    var result: [Int] = []
    var flag = 0
    var element = 0
    for i in (0...nums.count - 1).reversed() {
        if i == nums.count - 1 {
            element = nums[i] + 1
        } else {
            element = nums[i] + flag
        }
    
        if element != 10 {
            result.insert(element, at: 0)
            flag = 0
        }
        if element == 10 && i != 0 {
            result.insert(0, at: 0)
            flag = 1
        }
        if element == 10 && i == 0 {
            result.insert(0, at: 0)
            result.insert(1, at: 0)
        }
    }
    return result
}

let a = [1,2,3]
let b = plusOne(a)

let a2 = [4,3,2,1]
let b2 = plusOne(a2)

let a3 = [0]
let b3 = plusOne(a3)

let a4 = [9]
let b4 = plusOne(a4)

print(b)
print(b2)
print(b3)
print(b4)


