import UIKit

/*
 https://leetcode.com/problems/majority-element/
 
 Given an array nums of size n, return the majority element.

 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

  

 Example 1:

 Input: nums = [3,2,3]
 Output: 3
 Example 2:

 Input: nums = [2,2,1,1,1,2,2]
 Output: 2
  

 Constraints:

 n == nums.length
 1 <= n <= 5 * 104
 -231 <= nums[i] <= 231 - 1
 
 Follow-up: Could you solve the problem in linear time and in O(1) space?
 
 */

func majorityElement(_ nums: [Int]) -> Int {
    var dict = [Int: Int]()
    
    for num in nums {
        dict[num, default: 0] += 1
        if dict[num]! > (nums.count / 2) {
            return num
        }
    }
    
    return 0
}


func majorityElement(_ nums: [Int]) -> Int {
    var maxCount = 0
    var maxNum = nums[0]
    
    for num in nums {
        if maxCount == 0 {
            maxNum = num
            maxCount = 1
            continue
        }
        
        if maxNum == num {
            maxCount += 1
        } else {
            maxCount -= 1
        }
    }
    
    return maxNum
}


func majorityElement(_ nums: [Int]) -> Int {
    var dict = [Int: Int]()
    
    for num in nums {
        dict[num, default: 0] += 1
    }
    
    for (key, value) in dict {
        if value > (nums.count / 2) {
            return key
        }
    }
    
    return 0
}


func majorityElement(_ nums: [Int]) -> Int {
    
    var dictNum = [Int: Int]()
    var maxCount = 0
    var result = 0
    
    for num in nums {
        if dictNum[num] != nil {
            dictNum[num]! += 1
        } else {
            dictNum[num] = 1
        }
        
        if dictNum[num]! > maxCount {
            maxCount = dictNum[num]!
            result = num
        }
    }
    return result
}

let nums1 = [3,2,3]
let nums2 = [2,2,1,1,1,2,2]
let nums3 = [1]
print(majorityElement(nums1))
print(majorityElement(nums2))
print(majorityElement(nums3))
