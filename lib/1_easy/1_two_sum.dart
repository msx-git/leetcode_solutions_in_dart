class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> numToIndex = {};

    for (int i = 0; i < nums.length; i++) {
      int num = nums[i];
      int complement = target - num;

      if (numToIndex.containsKey(complement)) {
        return [numToIndex[complement]!, i];
      } else {
        numToIndex[num] = i;
      }
    }
    return [];
  }
}

void main() {
  var s = Solution();
  final nums = [1, 4, 2, 5, 3, 6, 7, 8, 9];
  final target = 10;
  print(s.twoSum(nums, target));
}
