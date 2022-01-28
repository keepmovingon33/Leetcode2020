/*
 https://leetcode.com/problems/valid-anagram/
 
 242. Valid Anagram
 
 Given two strings s and t, return true if t is an anagram of s, and false otherwise.

 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

  

 Example 1:

 Input: s = "anagram", t = "nagaram"
 Output: true
 Example 2:

 Input: s = "rat", t = "car"
 Output: false
  

 Constraints:

 1 <= s.length, t.length <= 5 * 104
 s and t consist of lowercase English letters.
 
 */


import Foundation

func isAnagram(_ s: String, _ t: String) -> Bool {
    let s1 = Array(s)
    var dict1 = [String: Int]()
    let s2 = Array(t)
    var dict2 = [String: Int]()
    
    for e in s1 {
        dict1[String(e), default: 0] += 1
    }
    
    for e in s2 {
        dict2[String(e), default: 0] += 1
    }
    
    for (key, value) in dict1 {
        if dict2[key] == nil || dict2[key] != value {
            return false
        }
    }
    
    for (key, value) in dict2 {
        if dict1[key] == nil || dict1[key] != value {
            return false
        }
    }
    
    return true
}

let s = "anagram"
let t = "nagaram"
print(isAnagram(s, t))

let s1 = "rat"
let t1 = "car"
print(isAnagram(s1, t1))
