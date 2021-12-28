"""
1984. Minimum Difference Between Highest and Lowest of K Scores

You are given a 0-indexed integer array nums, where nums[i] represents the score of the ith student. You are also given an integer k.

Pick the scores of any k students from the array so that the difference between the highest and the lowest of the k scores is minimized.

Return the minimum possible difference.
"""

class Solution:
    def minimumDifference(self, nums: List[int], k: int) -> int:
        if len(nums) < 2:
            return 0
        
        sortedList = nums
        sortedList.sort()
        sortedList.reverse()
        result = sortedList[0] - sortedList[k - 1]

        for i in range(len(nums) - k + 1):
            if sortedList[i] - (sortedList[i + k - 1]) < result:
                result = sortedList[i] - (sortedList[i + k - 1]) 
            
        return result
        
"""
Success
Details
Runtime: 92 ms, faster than 95.01% of Python3 online submissions for Minimum Difference Between Highest and Lowest of K Scores.
Memory Usage: 14.5 MB, less than 36.59% of Python3 online submissions for Minimum Difference Between Highest and Lowest of K Scores.
"""
