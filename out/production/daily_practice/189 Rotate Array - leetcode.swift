// Given an array, rotate the array to the right by k steps, where k is non-negative.

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) -> [Int] {
        if k == 0 {
            return nums
        } else {
            for _ in 0..<k {
            var lastOne = nums.count - 1
            nums.insert(nums[lastOne], at: 0)
            nums.removeLast()
            }
            return nums 
        }       
    }
}

/*
Success
Details
Runtime: 1300 ms, faster than 16.32% of Swift online submissions for Rotate Array.
Memory Usage: 21.3 MB, less than 68.74% of Swift online submissions for Rotate Array.
*/
