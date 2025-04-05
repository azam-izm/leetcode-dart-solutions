Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

 

Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
Example 2:

Input: nums = [3,2,4], target = 6
Output: [1,2]
Example 3:

Input: nums = [3,3], target = 6
Output: [0,1]
 

Constraints:

2 <= nums.length <= 104
-109 <= nums[i] <= 109
-109 <= target <= 109
Only one valid answer exists.
 

Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?

```
 List<int> twoSum(List<int> nums, int target) {
  // Create a map to store the numbers we have seen so far
  Map<int, int> seenNumbers = {};

  // Iterate through the list
  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i]; // The number we need to find

    // Check if the complement exists in the map
    if (seenNumbers.containsKey(complement)) {
      return [seenNumbers[complement]!, i]; // Return the indices of the pair
    }

    // Add the current number and its index to the map
    seenNumbers[nums[i]] = i;
  }

  return []; // If no solution is found (though the problem guarantees a solution)
}

void main() {
  print(twoSum([2, 7, 11, 15], 9)); // Output: [0, 1]
  print(twoSum([3, 2, 4], 6)); // Output: [1, 2]
  print(twoSum([3, 3], 6)); // Output: [0, 1]
}

```
