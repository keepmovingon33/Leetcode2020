import UIKit

/*
 https://leetcode.com/problems/two-out-of-three/
 
 2032. Two Out of Three
 
 Given three integer arrays nums1, nums2, and nums3, return a distinct array containing all the values that are present in at least two out of the three arrays. You may return the values in any order.
  

 Example 1:

 Input: nums1 = [1,1,3,2], nums2 = [2,3], nums3 = [3]
 Output: [3,2]
 Explanation: The values that are present in at least two arrays are:
 - 3, in all three arrays.
 - 2, in nums1 and nums2.
 Example 2:

 Input: nums1 = [3,1], nums2 = [2,3], nums3 = [1,2]
 Output: [2,3,1]
 Explanation: The values that are present in at least two arrays are:
 - 2, in nums2 and nums3.
 - 3, in nums1 and nums2.
 - 1, in nums1 and nums3.
 Example 3:

 Input: nums1 = [1,2,2], nums2 = [4,3,3], nums3 = [5]
 Output: []
 Explanation: No value is present in at least two arrays.
  

 Constraints:

 1 <= nums1.length, nums2.length, nums3.length <= 100
 1 <= nums1[i], nums2[j], nums3[k] <= 100

 */


func twoOutOfThree(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int]) -> [Int] {
    let set1 = Set(nums1)
    let set2 = Set(nums2)
    let set3 = Set(nums3)

    let int1 = set1.intersection(set2)
    let int2 = set1.intersection(set3)
    let int3 = set3.intersection(set2)
    
    let result = int1.union(int2.union(int3))
    
    return Array(result)
}

func twoOutOfThree(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int]) -> [Int] {
    var result: [Int] = []
    
    for num in nums1 {
        if nums2.contains(num) || nums3.contains(num) {
            if !result.contains(num) {
                result.append(num)
            }
        }
    }
    
    for num in nums2 {
        if nums1.contains(num) || nums3.contains(num) {
            if !result.contains(num) {
                result.append(num)
            }
        }
    }
    
    for num in nums3 {
        if nums2.contains(num) || nums1.contains(num) {
            if !result.contains(num) {
                result.append(num)
            }
        }
    }
    
    return result
}
