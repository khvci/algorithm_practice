/*
Given a string s, reverse the order of characters in each word within a 
sentence while still preserving whitespace and initial word order.
*/

class Solution {
    func reverseWords(_ s: String) -> String {
        var temp = s.components(separatedBy: " ")
        temp = temp.map({ String($0.reversed()) })
        var result = temp[0]
        
        for i in 1..<temp.count {
            result = result + " " + temp[i]
        }
        
        return result
    }
}

/*
Success
Details
Runtime: 200 ms, faster than 47.54% of Swift online submissions for Reverse Words in a String III.
Memory Usage: 15.5 MB, less than 16.55% of Swift online submissions for Reverse Words in a String III.
*/
