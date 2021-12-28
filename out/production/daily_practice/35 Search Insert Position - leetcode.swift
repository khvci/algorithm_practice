/*
Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You must write an algorithm with O(log n) runtime complexity.
*/

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var startPoint = 0
        var endPoint = nums.count - 1
        var midPoint = 0
        
        while startPoint <= endPoint {
            midPoint = (startPoint + endPoint) / 2
            if nums[midPoint] == target{
                return midPoint
            } else if nums[midPoint] < target {
                startPoint = midPoint + 1
            } else {
                endPoint = midPoint - 1
            }
        }
        return startPoint
    }
}

/*
Success
Details
Runtime: 44 ms, faster than 11.77% of Swift online submissions for Search Insert Position.
Memory Usage: 14.1 MB, less than 70.49% of Swift online submissions for Search Insert Position.
*/
