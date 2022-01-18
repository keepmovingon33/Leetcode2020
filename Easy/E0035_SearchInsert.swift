import UIKit

/*
 Example 1:

 Input: nums = [1,3,5,6], target = 5
 Output: 2
 Example 2:

 Input: nums = [1,3,5,6], target = 2
 Output: 1
 Example 3:

 Input: nums = [1,3,5,6], target = 7
 Output: 4
 Example 4:

 Input: nums = [1,3,5,6], target = 0
 Output: 0
 Example 5:

 Input: nums = [1], target = 0
 Output: 0

 **/


func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var head = 0
    var tail = nums.count - 1
    
    while head <= tail {
        let pivot = (head + tail) / 2
        let current = nums[pivot]
        
        if current == target {
            return pivot
        } else if current < target {
            head = pivot + 1
        } else if current > target {
            tail = pivot - 1
        }
    }
    
    return head
}


var nums = [1,2,3,4,5]

var target = 0
var b = searchInsert(nums, target)
print(b)


// Not a good solution because the question requires Big(O) = Log(N)

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    if nums.count == 0 {
        return 0
    }
    
    for (index, value) in nums.enumerated() {
        if value > target {
            return index
        }
    }
    
    return nums.count
}
