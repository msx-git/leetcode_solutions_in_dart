class Solution {
  int mostFrequent(List<int> nums, int key) {
    Map<int, int> targetCounts = {}; // Map to store target counts

    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] == key) {
        int target = nums[i + 1]; // Get the number following the key
        targetCounts[target] =
            (targetCounts[target] ?? 0) + 1; // Increment target count
      }
    }

    int maxTarget = -1;
    int maxCount = 0;

    // Find the target with the maximum count
    targetCounts.forEach((target, count) {
      if (count > maxCount) {
        maxTarget = target;
        maxCount = count;
      }
    });

    return maxTarget;
  }
}

void main() {
  var s = Solution();

  print(s.mostFrequent([1, 100, 200, 1, 100], 1));
}
