/*
Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

 

Example 1:

Input: x = 123
Output: 321
Example 2:

Input: x = -123
Output: -321
Example 3:

Input: x = 120
Output: 21
Example 4:

Input: x = 0
Output: 0
 

Constraints:

-231 <= x <= 231 - 1
*/

class Solution {
    func reverse(_ x: Int) -> Int {
        var input = x;
        var output = 0;

        while (input != 0) {
            var value = input % 10;
            input = input / 10;

            output = output * 10 + value;
        }

        if(output > Int32.max || output < Int32.min) {
            output = 0;
        }

        return output;
    }
}
