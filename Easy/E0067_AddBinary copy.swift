import UIKit

/*
Given two binary strings a and b, return their sum as a binary string.

 

Example 1:

Input: a = "11", b = "1"
Output: "100"
Example 2:

Input: a = "1010", b = "1011"
Output: "10101"
*/

func addBinary(_ a: String, _ b: String) -> String {
    var a = a
    var b = b
    var carry = 0
    var result = ""
    
    while a.count != 0 || b.count != 0 || carry != 0 {
        let x = a.isEmpty ? "0" : String(a.removeLast())
        let y = b.isEmpty ? "0" : String(b.removeLast())
        let sum = Int(x)! + Int(y)! + carry
        result = String(sum % 2) + result
        carry = sum / 2
    }
    return result
}

let a = "1010"
let b = "1011"
let c = addBinary(a, b)
print(c)
