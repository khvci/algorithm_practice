/*
https://leetcode.com/problems/richest-customer-wealth/

You are given an m x n integer grid accounts where accounts[i][j] is the amount of money the i^th customer has in the j^th bank. Return the wealth that the richest customer has.

A customer's wealth is the amount of money they have in all their bank accounts. The richest customer is the customer that has the maximum wealth.

*/

func maximumWealth(_ accounts: [[Int]]) -> Int 
  {
    var biggest = 0
    for i in accounts
    	{
        var accountTotal = 0

        for j in i
        {
          accountTotal += j
        }

        if accountTotal > biggest 
				{
          biggest = accountTotal
        }
    	}
    return biggest
  }

print(maximumWealth([[1,2,3],[3,2,1]]))

print(maximumWealth([[1,5],[7,3],[3,5]]))

print(maximumWealth([[2,8,7],[7,1,3],[1,9,5]]))

/*

Leetcode Result: Success

Runtime: 28 ms, faster than 97.89% of Swift online submissions for Richest Customer Wealth.
Memory Usage: 14.3 MB, less than 6.32% of Swift online submissions for Richest Customer Wealth.

*/
