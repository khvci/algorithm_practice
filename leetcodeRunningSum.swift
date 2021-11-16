/*

https://leetcode.com/problems/running-sum-of-1d-array/

Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]). Return the running sum of nums.

*/

func runningSum(_ nums: [Int]) -> [Int] 
	{
    var output: [Int] = []
    var total = 0
    for i in nums 
			{
        total += i
        output.append(total)
      }
    return output
	}

print(runningSum([1,2,3,4]))

print(runningSum([1,1,1,1,1]))

print(runningSum([3,1,2,10,1]))

/*

Leetcode Result: Accepted. 

Runtime: 12 ms, faster than 96.64% of Swift online submissions for Running Sum of 1d Array.
Memory Usage: 14 MB, less than 88.59% of Swift online submissions for Running Sum of 1d Array.

*/
