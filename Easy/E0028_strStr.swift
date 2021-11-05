import UIKit

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
                if haystackIndex >= 0 {
                    continue
                }
            }
            haystackIndexBeforeMatch += 1
            haystackIndex = haystackIndexBeforeMatch
            needleIndex = needle.count - 1
        }
        return -1
    }
}
