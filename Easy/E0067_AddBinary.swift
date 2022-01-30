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

func addBinary(_ a: String, _ b: String) -> String {
    var a1 = Array(a)
    var b1 = Array(b)
    var result: [String] = []
    
    var flag = 0
    
    while a1.count != 0 && b1.count != 0 {
        let lastA1 = String(a1.last!)
        let lastB1 = String(b1.last!)
        let lastNumA1 = Int(lastA1) ?? 0
        let lastNumB1 = Int(lastB1) ?? 0
        
        let sum = lastNumA1 + lastNumB1 + flag
        
        if sum == 3 {
            flag = 1
            result.insert("1", at: 0)
        } else if sum == 2 {
            flag = 1
            result.insert("0", at: 0)
        } else {
            flag = 0
            result.insert("\(sum)", at: 0)
        }
        a1.remove(at: a1.count - 1)
        b1.remove(at: b1.count - 1)
    }
    
    if a1.count != 0 {
        while a1.count != 0 {
            let lastA1 = String(a1.last!)
            let lastNumA1 = Int(lastA1) ?? 0
            let sum = lastNumA1 + flag
            
            if sum == 2 {
                flag = 1
                result.insert("0", at: 0)
            } else {
                flag = 0
                result.insert("\(sum)", at: 0)
            }
        }
        
    }
    
    if b1.count != 0 {
        while b1.count != 0 {
            let lastB1 = String(b1.last!)
            let lastNumB1 = Int(lastB1) ?? 0
            let sum = lastNumB1 + flag
            
            if sum == 2 {
                flag = 1
                result.insert("0", at: 0)
            } else {
                flag = 0
                result.insert("\(sum)", at: 0)
            }
        }
        
    }
    
    if flag == 1 {
        result.insert("1", at: 0)
    }
    
    return result.joined(separator: "")
}


var a = "1010"
let b = "1011"

print(addBinary(a, b))
