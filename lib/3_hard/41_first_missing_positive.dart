class Solution {
  int firstMissingPositive(List<int> nums) {
    final int n = nums.length;

    for (int i = 0; i < n; i++) {
      while (nums[i] > 0 && nums[i] <= n && nums[nums[i] - 1] != nums[i]) {
        final int temp = nums[nums[i] - 1];
        nums[nums[i] - 1] = nums[i];
        nums[i] = temp;
      }
    }

    for (int i = 0; i < n; i++) {
      if (nums[i] != i + 1) {
        return i + 1;
      }
    }

    return n + 1;
  }
}

void main() {
  var s = Solution();

  List<int> nums1 = [1, 2, 0];
  List<int> nums2 = [3, 4, -1, 1];
  List<int> nums3 = [7, 8, 9, 11, 12];

  print(s.firstMissingPositive(nums1)); // Output: 3
  print(s.firstMissingPositive(nums2)); // Output: 2
  print(s.firstMissingPositive(nums3)); // Output: 1
}
