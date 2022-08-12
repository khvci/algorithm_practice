/*
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.
 */

import java.util.*;
import java.util.List;

class TwoSum {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        List<Integer> nums = new ArrayList<>();
        System.out.println("Provide an array, a target, and a non-integer char to run program.");
        while (scanner.hasNextInt()) {
            nums.add(scanner.nextInt());
        }
        int target = nums.get(nums.size() - 1);
        nums.remove(nums.size() - 1);
        scanner.close();

        System.out.println(
                checkSums(nums, target));

    }

    private static List<Integer> checkSums(List<Integer> nums, int target) {
        Map<Integer, Integer> remainderMap = new HashMap<>();
        for (int i = 0, limit = nums.size(); i < limit; i++) {
            Integer remainder = target - nums.get(i);

            if (remainderMap.containsKey(nums.get(i))) {
                return List.of(remainderMap.get(nums.get(i)), i);
            }
            remainderMap.put(remainder, i);
        }
        System.out.print("Cannot found complementing pairs on this array: ");
        return nums;
    }
}

/*
input: 2 7 11 15 9 .
output: [0, 1]

input: 3 2 4 6 .
output: [1, 2]

input: 2 3 4 5 6 14 .
output: Cannot found complementing pairs on this array: [2, 3, 4, 5, 6]

input: 3 3 6 .
output: [0, 1]
 */