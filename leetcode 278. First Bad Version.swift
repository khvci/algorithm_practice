/*
You are a product manager and currently leading a team to develop a new product. Unfortunately, 
the latest version of your product fails the quality check. Since each version is developed based 
on the previous version, all the versions after a bad version are also bad.

Suppose you have n versions [1, 2, ..., n] and you want to find out the first bad one, which causes 
all the following ones to be bad.

You are given an API bool isBadVersion(_ version) which returns whether version is bad. Implement a 
function to find the first bad version. You should minimize the number of calls to the API.}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var minCheck = 1
        var maxCheck = n
        var midCheck = 0
        
        while minCheck < maxCheck {
            midCheck = (minCheck + maxCheck) / 2

            if isBadVersion(midCheck) {
                maxCheck = midCheck
            } else {
                minCheck = midCheck + 1
            }
        }
        if isBadVersion(minCheck) {
            return minCheck
        }
        return maxCheck
    }
}

/*

Success
Details
Runtime: 5 ms, faster than 32.68% of Swift online submissions for First Bad Version.
Memory Usage: 13.7 MB, less than 84.64% of Swift online submissions for First Bad Version.

*/
