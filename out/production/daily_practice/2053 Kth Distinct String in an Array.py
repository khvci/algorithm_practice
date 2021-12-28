"""
A distinct string is a string that is present only once in an array.

Given an array of strings arr, and an integer k, return the kth distinct string present in arr. 

If there are fewer than k distinct strings, return an empty string "".

Note that the strings are considered in the order in which they appear in the array.
"""

from collections import Counter

class Solution:
    def kthDistinct(self, arr: List[str], k: int) -> str:
        countDict = Counter(arr)
        uniqueOnes = []
        for key, value in countDict.items():
            if value == 1:
                uniqueOnes.append(key)
        if len(uniqueOnes) >= k:
            return uniqueOnes[k - 1]
        else:
            return ""
       
"""
Success

Runtime: 64 ms, faster than 90.74% of Python3 online submissions for Kth Distinct String in an Array.

Memory Usage: 14.7 MB, less than 27.65% of Python3 online submissions for Kth Distinct String in an Array.
"""
