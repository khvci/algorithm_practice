/* Day 1 of 14, problem 1 of 3.

704. Binary Search */

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 0 {
            return -1
        } 
        
        var firstIndex = 0
        var lastIndex = nums.count - 1
        
        while firstIndex <= lastIndex {
            var midIndex = (firstIndex + lastIndex) / 2
            if nums[midIndex] == target {
                return midIndex
            } else if target < nums[midIndex] {
                lastIndex = midIndex - 1
            } else {
                firstIndex = midIndex + 1
            }
        }
        
        return -1
    }
}

/*

Success

Runtime: 421 ms, faster than 18.47% of Swift online submissions for Binary Search.
Memory Usage: 14.1 MB, less than 69.88% of Swift online submissions for Binary Search.

*/
