funcfwefwefwfimport UIKit

/*
 Example 1:

 Input: haystack = "hello", needle = "ll"
 Output: 2
 Example 2:

 Input: haystack = "aaaaa", needle = "bba"
 Output: -1
 Example 3:

 Input: haystack = "", needle = ""
 Output: 0
 */

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard !needle.isEmpty else { return 0 }

        let haystack = Array(haystack)
        let needle = Array(needle)

        var needleIndex = needle.count - 1
        var haystackIndex = needleIndex
        var haystackIndexBeforeMatch = needleIndex

        while haystackIndex < haystack.count {
            if haystack[haystackIndex] == needle[needleIndex] {
                if needleIndex == 0 {
                    return haystackIndex
                }
                haystackIndex -= 1
                needleIndex -= 1
            } else {
                haystackIndexBeforeMatch += 1
                haystackIndex = haystackIndexBeforeMatch
                needleIndex = needle.count - 1
            }
        }
        return -1
    }
}


func strStr(_ haystack: String, _ needle: String) -> Int {
   
    if needle.count == 0 {
        return 0
    }
    
    if !haystack.contains(needle) {
        return -1
    }
    
    var arr1 = Array(haystack)
    let count1 = arr1.count
    var arr2 = Array(needle)
    let count2 = arr2.count
    
    for index in 0...(count1 - count2) {
        print("arr1[index...(index + count2)] = \(arr1[index..<(index + count2)])")
        print("arr2[0..<count2] = \(arr2[0..<count2])")
        if arr1[index..<(index + count2)] == arr2[0..<count2] {
            return index
        }
    }
    
    return 0
}
