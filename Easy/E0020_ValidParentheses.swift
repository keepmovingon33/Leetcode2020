import UIKit

/*
 https://leetcode.com/problems/valid-parentheses/
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
  

 Example 1:

 Input: s = "()"
 Output: true
 Example 2:

 Input: s = "()[]{}"
 Output: true
 Example 3:

 Input: s = "(]"
 Output: false
 Example 4:

 Input: s = "([)]"
 Output: false
 Example 5:

 Input: s = "{[]}"
 Output: true
  

 Constraints:

 1 <= s.length <= 104
 s consists of parentheses only '()[]{}'.
*/

func isValid(_ s: String) -> Bool {
    if (s.count % 2 == 1) {
        return false
    }
    
    var stack: [Character] = []
    
    for char in s {
        switch char {
        case "{", "[", "(":
            stack.append(char)
        case "}":
            if stack.popLast() == "{" {
                continue
            } else {
                return false
            }
        case "]":
            if stack.popLast() == "[" {
                continue
            } else {
                return false
            }
        case ")":
            if stack.popLast() == "(" {
                continue
            } else {
                return false
            }
        default:
            break
        }
    }
    
    if stack.isEmpty {
        return true
    }
    
    return false
}

var numbers = isValid("[({})]")

print(numbers)
