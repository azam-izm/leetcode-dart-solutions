// Given a list of integers and a target value, return the indices of the two numbers whose sum equals the target. 

void main() {
  // Example input
  List<int> nums = [2, 7, 11, 15];
  int target = 9;

  List<int> result = twoSum(nums, target);
  print(result); // Expected Output: [0, 1]
}

List<int> twoSum(List<int> nums, int target) {
  // Iterate through each element in the list
  for (int i = 0; i < nums.length; i++) {
    // Check every element after the current one
    for (int j = i + 1; j < nums.length; j++) {
      // Check if the sum of the two elements is equal to the target
      if (nums[i] + nums[j] == target) {
        // Return the indices in a list
        return [i, j];
      }
    }
  }

  // Return empty list if no solution found (this won't happen based on the problem's assumption)
  return [];
}
