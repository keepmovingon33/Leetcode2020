/*
 
 Just an interview question asking to sort an array not using built in function
 
 */


import Foundation

func sorting(_ nums: [Int]) -> [Int] {
    var input = nums
    
    for index1 in 0..<(nums.count - 1) {
        var minNum = input[index1]
        for index2 in (index1 + 1)..<nums.count {
            if input[index2] < minNum {
                minNum = input[index2]
                let temp = input[index1]
                input[index1] = input[index2]
                input[index2] = temp
            }
        }
    }
    return input
}

let nums = [4,2,7,1,9,10,5,3]
print(sorting(nums))
