import UIKit

/*

Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".

 

Example 1:

Input: strs = ["flower","flow","flight"]
Output: "fl"
Example 2:

Input: strs = ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.

*/

func longestCommonPrefix(_ strs: [String]) -> String {
    var count = 1
    var result: String = ""

    while true {
        let s = String(strs[0].prefix(count))
        for str in strs {
            if str.prefix(count) !=  s || str.count < count {
                return result
            }
        }
        result = s
        count += 1
    }
    return result
}
    

let strs = ["flower","flow","flight"]
let strs2 = ["dog","racecar","car"]
let result1 = longestCommonPrefix(strs)
let result2 = longestCommonPrefix(strs2)
print(result1)
print(result2)
