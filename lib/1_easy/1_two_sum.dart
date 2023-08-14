class Solution {
  List<int> twoSum(List<int> nums, int target) {
    // Create an empty map to store numbers and their indices
    Map<int, int> numToIndex = {};
    // [1, 3, 4, 6, 7, 8]
    for (int i = 0; i < nums.length; i++) {

      int num = nums[i];
      int complement = target - num;

      if (numToIndex.containsKey(complement)) {
        // Found a pair that adds up to target
        print(numToIndex);
        return [numToIndex[complement]!, i];
      } else {
        // Store the current number and its index in the map
        numToIndex[num] = i;
      }

    }

    return [];
  }
}

void main() {
  var s = Solution();

  final target = 5;
  print(s.twoSum([1, 3, 4, 6, 7, 8], target));

}
