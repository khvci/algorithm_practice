/*
Write a function that reverses a string. The input string is given as an array of characters s.

You must do this by modifying the input array in-place with O(1) extra memory.
*/

class Solution {
    func reverseString(_ s: inout [Character]) {
        let count = s.count
        for i in 0..<count / 2 {
            var keepThis = s[i]
            s[i] = s[count - i - 1]
            s[count - i - 1] = keepThis
            
        }
    }
}

/*
Success
Details
Runtime: 178 ms, faster than 34.10% of Swift online submissions for Reverse String.
Memory Usage: 18.2 MB, less than 81.02% of Swift online submissions for Reverse String.
*/
