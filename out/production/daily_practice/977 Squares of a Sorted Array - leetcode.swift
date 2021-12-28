/*
Given an integer array nums sorted in non-decreasing order, return an array of the squares of each 
number sorted in non-decreasing order.
*/

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var squareNums = nums
        for i in 0..<squareNums.count {
            squareNums[i] *= squareNums[i]
        }
        squareNums.sort()
        return squareNums
    }
}

/*
Success
Details 
Runtime: 422 ms, faster than 12.11% of Swift online submissions for Squares of a Sorted Array.
Memory Usage: 15.6 MB, less than 39.56% of Swift online submissions for Squares of a Sorted Array.
*/
