/*
Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Note that you must do this in-place without making a copy of the array.
*/

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        let count = nums.count
      
        nums.removeAll(where: { $0 == 0 })
      
        while nums.count < count {
          nums.append(0)
        }
    }
}

/*
Success
Details
Runtime: 264 ms, faster than 17.10% of Swift online submissions for Move Zeroes.
Memory Usage: 15 MB, less than 59.06% of Swift online submissions for Move Zeroes.
*/
