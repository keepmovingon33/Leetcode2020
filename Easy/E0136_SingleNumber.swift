import UIKit

/*
 https://leetcode.com/problems/single-number/
 
 Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

 You must implement a solution with a linear runtime complexity and use only constant extra space.

  

 Example 1:

 Input: nums = [2,2,1]
 Output: 1
 Example 2:

 Input: nums = [4,1,2,1,2]
 Output: 4
 Example 3:

 Input: nums = [1]
 Output: 1
 
 */

func singleNumber(_ nums: [Int]) -> Int {
    var dictNum = [Int: Int]()
    
    for num in nums {
        if let _ = dictNum[num] {
            dictNum[num]! += 1
            continue
        }
        dictNum[num] = 1
    }
    
    for (key, value) in dictNum {
        if value == 1 {
            return key
        }
    }
    
    return 0
}

let a = singleNumber([2,2,1])
print(a)
