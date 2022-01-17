import UIKit

/*
Given an integer x, return true if x is palindrome integer.

An integer is a palindrome when it reads the same backward as forward. For example, 121 is palindrome while 123 is not.

 

Example 1:

Input: x = 121
Output: true
Example 2:

Input: x = -121
Output: false
Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
Example 3:

Input: x = 10
Output: false
Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
Example 4:

Input: x = -101
Output: false

 */

func isPalindrome(_ x: Int) -> Bool {
    if x < 0 || x % 10 == 0 {
        return x == 0
    }
    
    var num = x
    var half = 0
    while num > half {
        half = half * 10 + num % 10
        num /= 10
    }
    
    return num == half || num == half / 10
}

let x = isPalindrome(-13)
let y = isPalindrome(120)
let z = isPalindrome(43)
let a = isPalindrome(121)

print(x)
print(y)
print(z)
print(a)


func isPalindrome(_ x: Int) -> Bool {
     
     if x < 0 { return false }
     var str = String(x)
     
     while str.count >= 2 {
         if str.first! != str.last! {
             return false
         }
         str.removeFirst()
         str.removeLast()
     }
     
     return true
 }
