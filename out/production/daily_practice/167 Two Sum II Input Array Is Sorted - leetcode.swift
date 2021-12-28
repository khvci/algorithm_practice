/*
Given a 1-indexed array of integers numbers that is already sorted in non-decreasing order, 
find two numbers such that they add up to a specific target number. Let these two numbers be 
numbers[index1] and numbers[index2] where 1 <= index1 < index2 <= numbers.length.

Return the indices of the two numbers, index1 and index2, added by one as an integer array [index1, index2] 
of length 2.

The tests are generated such that there is exactly one solution. You may not use the same element twice.
*/

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        guard numbers.count > 1 else {return []}
        
        var leftIndex = 0
        var rightIndex = numbers.count - 1
        
        while leftIndex < rightIndex {
            var sum = numbers[leftIndex] + numbers[rightIndex]
            if sum == target {
                return [leftIndex + 1, rightIndex + 1]
            } else if sum < target {
                leftIndex += 1
            } else {
                rightIndex -= 1
            }
        }
        return []
    }
}

/*
Success
Details
Runtime: 36 ms, faster than 38.12% of Swift online submissions for Two Sum II - Input Array Is Sorted.
Memory Usage: 14.2 MB, less than 85.27% of Swift online submissions for Two Sum II - Input Array Is Sorted.
*/
